package com.niccolo.rpg.party;

import com.mojang.brigadier.context.CommandContext;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.commands.Commands;
import net.minecraft.commands.arguments.EntityArgument;
import net.minecraft.network.chat.Component;
import net.minecraft.server.MinecraftServer;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.storage.LevelResource;
import net.neoforged.neoforge.common.NeoForge;
import net.neoforged.neoforge.event.RegisterCommandsEvent;
import net.neoforged.neoforge.event.entity.living.LivingExperienceDropEvent;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.nio.file.AtomicMoveNotSupportedException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.UUID;

/**
 * Part of the patched NiccoloRPG mod, not a second mod.
 * Stores party membership in the current save and shares combat RPG XP once per kill.
 */
public final class PartySystem {
    public static final int MAX_MEMBERS = 8;
    private static final long INVITE_MS = 120_000L;
    private static MinecraftServer lastServer;
    private static State lastState;
    private static Method originalAward;

    private PartySystem() { }

    /** Called from NiccoloRPG's original @Mod constructor by a narrow bytecode patch. */
    public static void register() {
        NeoForge.EVENT_BUS.addListener(PartySystem::onRegisterCommands);
    }

    private static void onRegisterCommands(RegisterCommandsEvent event) {
        event.getDispatcher().register(Commands.literal("party")
            .executes(ctx -> info(ctx.getSource().getPlayerOrException()))
            .then(Commands.literal("help").executes(ctx -> help(ctx.getSource().getPlayerOrException())))
            .then(Commands.literal("create").executes(ctx -> create(ctx.getSource().getPlayerOrException())))
            .then(Commands.literal("invite").then(Commands.argument("player", EntityArgument.player())
                .executes(ctx -> invite(ctx.getSource().getPlayerOrException(), EntityArgument.getPlayer(ctx, "player")))))
            .then(Commands.literal("accept").executes(ctx -> accept(ctx.getSource().getPlayerOrException())))
            .then(Commands.literal("decline").executes(ctx -> decline(ctx.getSource().getPlayerOrException())))
            .then(Commands.literal("leave").executes(ctx -> leave(ctx.getSource().getPlayerOrException())))
            .then(Commands.literal("list").executes(ctx -> info(ctx.getSource().getPlayerOrException())))
            .then(Commands.literal("kick").then(Commands.argument("player", EntityArgument.player())
                .executes(ctx -> kick(ctx.getSource().getPlayerOrException(), EntityArgument.getPlayer(ctx, "player")))))
            .then(Commands.literal("transfer").then(Commands.argument("player", EntityArgument.player())
                .executes(ctx -> transfer(ctx.getSource().getPlayerOrException(), EntityArgument.getPlayer(ctx, "player")))))
            .then(Commands.literal("disband").executes(ctx -> disband(ctx.getSource().getPlayerOrException()))));
    }

    private static synchronized State state(MinecraftServer server) {
        if (lastServer != server || lastState == null) {
            lastServer = server;
            lastState = State.load(server);
        }
        return lastState;
    }

    private static void msg(ServerPlayer player, String message) {
        player.sendSystemMessage(Component.literal("§6[Группа] §f" + message));
    }

    private static String playerName(MinecraftServer server, UUID uuid) {
        ServerPlayer player = server.getPlayerList().getPlayer(uuid);
        return player == null ? uuid.toString().substring(0, 8) + " (не в сети)" : player.getGameProfile().getName();
    }

    private static Group groupOf(State s, UUID member) {
        UUID id = s.byMember.get(member);
        return id == null ? null : s.groups.get(id);
    }

    private static int help(ServerPlayer p) {
        msg(p, "/party create — создать группу; /party invite <игрок> — пригласить.");
        msg(p, "/party accept — вступить; /party decline — отклонить; /party list — участники.");
        msg(p, "/party leave — выйти; /party kick <игрок> — исключить; /party transfer <игрок> — передать лидерство; /party disband — распустить.");
        msg(p, "RPG-опыт за убийство делится между всеми участниками группы онлайн, даже без нанесённого ими урона.");
        return 1;
    }

    private static int create(ServerPlayer p) {
        State s = state(p.getServer());
        if (groupOf(s, p.getUUID()) != null) {
            msg(p, "Ты уже состоишь в группе.");
            return 0;
        }
        Group g = new Group(UUID.randomUUID(), p.getUUID());
        s.groups.put(g.id, g);
        s.byMember.put(p.getUUID(), g.id);
        s.save();
        msg(p, "Группа создана. Приглашай друзей: /party invite <ник>");
        return 1;
    }

    private static int invite(ServerPlayer p, ServerPlayer target) {
        State s = state(p.getServer());
        Group g = groupOf(s, p.getUUID());
        if (g == null || !g.leader.equals(p.getUUID())) {
            msg(p, "Приглашать может только лидер группы. Создай группу: /party create");
            return 0;
        }
        if (p.getUUID().equals(target.getUUID()) || groupOf(s, target.getUUID()) != null) {
            msg(p, "Этот игрок уже в группе или приглашение самому себе невозможно.");
            return 0;
        }
        if (g.members.size() >= MAX_MEMBERS) {
            msg(p, "В группе максимум " + MAX_MEMBERS + " игроков.");
            return 0;
        }
        s.invites.put(target.getUUID(), new Invite(g.id, System.currentTimeMillis() + INVITE_MS));
        msg(p, "Приглашение отправлено игроку " + target.getGameProfile().getName() + " (2 минуты).");
        msg(target, p.getGameProfile().getName() + " приглашает тебя в группу! /party accept или /party decline (2 минуты).");
        return 1;
    }

    private static int accept(ServerPlayer p) {
        State s = state(p.getServer());
        if (groupOf(s, p.getUUID()) != null) {
            msg(p, "Сначала выйди из нынешней группы: /party leave");
            return 0;
        }
        Invite in = s.invites.remove(p.getUUID());
        if (in == null || in.expiresAt() < System.currentTimeMillis()) {
            msg(p, "Нет действующего приглашения.");
            return 0;
        }
        Group g = s.groups.get(in.groupId());
        if (g == null || g.members.size() >= MAX_MEMBERS) {
            msg(p, "Группа распущена или заполнена.");
            return 0;
        }
        g.members.add(p.getUUID());
        s.byMember.put(p.getUUID(), g.id);
        s.save();
        notifyGroup(p.getServer(), g, p.getGameProfile().getName() + " вступил в группу.");
        return 1;
    }

    private static int decline(ServerPlayer p) {
        State s = state(p.getServer());
        if (s.invites.remove(p.getUUID()) == null) { msg(p, "Нет приглашения."); return 0; }
        msg(p, "Приглашение отклонено.");
        return 1;
    }

    private static int leave(ServerPlayer p) {
        State s = state(p.getServer());
        Group g = groupOf(s, p.getUUID());
        if (g == null) { msg(p, "Ты не состоишь в группе."); return 0; }
        g.members.remove(p.getUUID());
        s.byMember.remove(p.getUUID());
        msg(p, "Ты вышел из группы.");
        if (g.members.isEmpty()) {
            s.groups.remove(g.id);
        } else {
            if (g.leader.equals(p.getUUID())) g.leader = g.members.iterator().next();
            notifyGroup(p.getServer(), g, p.getGameProfile().getName() + " вышел из группы. Лидер: " + playerName(p.getServer(), g.leader));
        }
        s.save();
        return 1;
    }

    private static int kick(ServerPlayer p, ServerPlayer target) {
        State s = state(p.getServer());
        Group g = groupOf(s, p.getUUID());
        if (g == null || !g.leader.equals(p.getUUID())) { msg(p, "Исключать участников может только лидер."); return 0; }
        if (p.getUUID().equals(target.getUUID()) || !g.members.remove(target.getUUID())) { msg(p, "Игрок не состоит в группе или это ты сам."); return 0; }
        s.byMember.remove(target.getUUID());
        s.save();
        msg(target, "Тебя исключили из группы.");
        notifyGroup(p.getServer(), g, target.getGameProfile().getName() + " исключён из группы.");
        return 1;
    }

    private static int transfer(ServerPlayer p, ServerPlayer target) {
        State s = state(p.getServer());
        Group g = groupOf(s, p.getUUID());
        if (g == null || !g.leader.equals(p.getUUID()) || !g.members.contains(target.getUUID())) { msg(p, "Передача возможна только участнику своей группы от её лидера."); return 0; }
        g.leader = target.getUUID();
        s.save();
        notifyGroup(p.getServer(), g, "Новый лидер: " + target.getGameProfile().getName());
        return 1;
    }

    private static int disband(ServerPlayer p) {
        State s = state(p.getServer());
        Group g = groupOf(s, p.getUUID());
        if (g == null || !g.leader.equals(p.getUUID())) { msg(p, "Распустить группу может только её лидер."); return 0; }
        notifyGroup(p.getServer(), g, "Группа распущена лидером.");
        for (UUID id : g.members) s.byMember.remove(id);
        s.groups.remove(g.id);
        s.invites.entrySet().removeIf(x -> x.getValue().groupId().equals(g.id));
        s.save();
        return 1;
    }

    private static int info(ServerPlayer p) {
        State s = state(p.getServer());
        Group g = groupOf(s, p.getUUID());
        if (g == null) { msg(p, "Ты не в группе. /party create или /party help"); return 0; }
        msg(p, "Участники (" + g.members.size() + "/" + MAX_MEMBERS + "), лидер: " + playerName(p.getServer(), g.leader));
        for (UUID id : g.members) msg(p, "• " + playerName(p.getServer(), id) + (id.equals(g.leader) ? " §e[лидер]" : ""));
        msg(p, "Боевой RPG-опыт делится поровну между участниками в сети, где бы они ни находились.");
        return 1;
    }

    private static void notifyGroup(MinecraftServer server, Group g, String message) {
        for (UUID id : g.members) {
            ServerPlayer p = server.getPlayerList().getPlayer(id);
            if (p != null) msg(p, message);
        }
    }

    /**
     * Called before NiccoloRPG's existing kill XP handler.
     * If no party member participated, returns false so previous equal-damage-participant logic stays intact.
     * Otherwise splits the ORIGINAL total combat RPG XP once across online combatants' parties
     * and solos. All online members of each credited party share its portion, regardless of
     * distance, dimension, or personal damage contribution. Offline members do not take a share.
     */
    public static boolean tryHandleKill(LivingExperienceDropEvent event,
                                        Map<UUID, Map<UUID, Float>> damages, double baseXp) {
        if (!(event.getEntity().level() instanceof ServerLevel sl) || baseXp <= 0) return false;
        MinecraftServer server = sl.getServer();
        State s = state(server);
        LinkedHashSet<UUID> participants = new LinkedHashSet<>();
        Map<UUID, Float> hits = damages.get(event.getEntity().getUUID());
        if (hits != null) participants.addAll(hits.keySet());
        Player killer = event.getAttackingPlayer();
        if (killer instanceof ServerPlayer sp) participants.add(sp.getUUID());

        LinkedHashMap<Object, Integer> weights = new LinkedHashMap<>();
        boolean anyParty = false;
        for (UUID id : participants) {
            ServerPlayer player = server.getPlayerList().getPlayer(id);
            if (player == null || player instanceof net.neoforged.neoforge.common.util.FakePlayer) continue;
            UUID partyId = s.byMember.get(id);
            Object key = partyId != null && s.groups.containsKey(partyId) ? partyId : id;
            if (partyId != null && s.groups.containsKey(partyId)) anyParty = true;
            weights.merge(key, 1, Integer::sum);
        }
        if (!anyParty || weights.isEmpty()) return false;
        Method award;
        try {
            award = originalAward();
        } catch (ReflectiveOperationException ex) {
            System.err.println("[NiccoloRPG Party] Failed to resolve original XP award method: " + ex);
            return false;
        }

        double totalWeight = 0;
        for (int weight : weights.values()) totalWeight += weight;
        // The original handler must not award this same kill a second time.
        damages.remove(event.getEntity().getUUID());
        for (Map.Entry<Object, Integer> entry : weights.entrySet()) {
            Object key = entry.getKey();
            Group group = key instanceof UUID id && s.groups.containsKey(id) ? s.groups.get(id) : null;
            List<ServerPlayer> recipients = new ArrayList<>();
            if (group == null) {
                ServerPlayer p = server.getPlayerList().getPlayer((UUID) key);
                if (p != null) recipients.add(p);
            } else {
                for (UUID uuid : group.members) {
                    ServerPlayer p = server.getPlayerList().getPlayer(uuid);
                    if (p != null && !(p instanceof net.neoforged.neoforge.common.util.FakePlayer)) recipients.add(p);
                }
            }
            if (recipients.isEmpty()) continue;
            double share = baseXp * entry.getValue() / totalWeight / recipients.size();
            for (ServerPlayer p : recipients) {
                try {
                    award.invoke(null, p, share);
                } catch (ReflectiveOperationException ex) {
                    // Do not re-run the original handler after partial party payments.
                    System.err.println("[NiccoloRPG Party] XP award failed for " + p.getUUID() + ": " + ex);
                }
            }
        }
        return true;
    }

    private static synchronized Method originalAward() throws ReflectiveOperationException {
        if (originalAward == null) {
            Class<?> type = Class.forName("com.niccolo.rpg.progression.ProgressionEvents");
            Method method = type.getDeclaredMethod("award", ServerPlayer.class, double.class);
            method.setAccessible(true);
            originalAward = method;
        }
        return originalAward;
    }

    private record Invite(UUID groupId, long expiresAt) { }

    private static final class Group {
        final UUID id;
        UUID leader;
        final LinkedHashSet<UUID> members = new LinkedHashSet<>();
        Group(UUID id, UUID leader) {
            this.id = id;
            this.leader = leader;
            this.members.add(leader);
        }
    }

    private static final class State {
        final Path file;
        final LinkedHashMap<UUID, Group> groups = new LinkedHashMap<>();
        final Map<UUID, UUID> byMember = new HashMap<>();
        final Map<UUID, Invite> invites = new HashMap<>();

        private State(Path file) { this.file = file; }

        static State load(MinecraftServer server) {
            Path path = server.getWorldPath(LevelResource.ROOT).resolve("data").resolve("niccolorpg_parties.properties");
            State state = new State(path);
            if (!Files.isRegularFile(path)) return state;
            Properties properties = new Properties();
            try (InputStream input = Files.newInputStream(path)) {
                properties.load(input);
                for (String key : properties.stringPropertyNames()) {
                    if (!key.startsWith("group.")) continue;
                    UUID id = UUID.fromString(key.substring(6));
                    String[] parts = properties.getProperty(key).split(";");
                    if (parts.length < 2) continue;
                    UUID leader = UUID.fromString(parts[0]);
                    Group group = new Group(id, leader);
                    for (int i = 1; i < parts.length && group.members.size() < MAX_MEMBERS; i++) {
                        UUID member = UUID.fromString(parts[i]);
                        if (!state.byMember.containsKey(member)) {
                            group.members.add(member);
                            state.byMember.put(member, id);
                        }
                    }
                    if (!group.members.contains(leader)) {
                        group.members.add(leader);
                        state.byMember.put(leader, id);
                    }
                    state.groups.put(id, group);
                }
            } catch (Exception ex) {
                System.err.println("[NiccoloRPG Party] Could not load party data: " + ex);
            }
            return state;
        }

        void save() {
            try {
                Files.createDirectories(file.getParent());
                Properties props = new Properties();
                for (Group group : groups.values()) {
                    StringBuilder value = new StringBuilder(group.leader.toString());
                    for (UUID id : group.members) value.append(';').append(id);
                    props.setProperty("group." + group.id, value.toString());
                }
                Path temp = file.resolveSibling(file.getFileName().toString() + ".tmp");
                try (OutputStream out = Files.newOutputStream(temp)) {
                    props.store(out, "NiccoloRPG party membership (world-scoped)");
                }
                try {
                    Files.move(temp, file, StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
                } catch (AtomicMoveNotSupportedException ex) {
                    Files.move(temp, file, StandardCopyOption.REPLACE_EXISTING);
                }
            } catch (IOException ex) {
                System.err.println("[NiccoloRPG Party] Could not save party data: " + ex);
            }
        }
    }
}
