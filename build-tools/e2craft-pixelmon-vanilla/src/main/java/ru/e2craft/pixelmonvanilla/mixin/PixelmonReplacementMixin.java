package ru.e2craft.pixelmonvanilla.mixin;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.entity.Mob;
import net.minecraft.server.level.ServerLevel;
import net.neoforged.neoforge.event.entity.EntityJoinLevelEvent;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;
import ru.e2craft.pixelmonvanilla.SpawnPolicy;
import ru.e2craft.pixelmonvanilla.SpawnSettings;
@Mixin(targets = "com.pixelmonmod.pixelmon.listener.MobSpawnReplacement", remap = false)
public abstract class PixelmonReplacementMixin {
    @Inject(method = "onEntitySpawn(Lnet/neoforged/neoforge/event/entity/EntityJoinLevelEvent;)V",at=@At("HEAD"),cancellable=true,remap=false,require=0)
    private static void e2craft$preserveVanillaMob(EntityJoinLevelEvent event, CallbackInfo ci) {
        if (!(event.getLevel() instanceof ServerLevel)) return;
        if (!(event.getEntity() instanceof Mob)) return;
        ResourceLocation type=BuiltInRegistries.ENTITY_TYPE.getKey(event.getEntity().getType());
        if(type==null) return;
        SpawnSettings cfg=SpawnSettings.get();
        if(!SpawnPolicy.bypassReplacement(type.getNamespace(),type.getPath(),event.getLevel().dimension().location().toString(),cfg.enabled,cfg.onlyOverworld,cfg.preservePixelmonVillagers)) return;
        if(cfg.debug) System.out.println("[E2Craft Pixelmon Vanilla Mobs] Kept vanilla entity: "+type);
        ci.cancel();
    }
}