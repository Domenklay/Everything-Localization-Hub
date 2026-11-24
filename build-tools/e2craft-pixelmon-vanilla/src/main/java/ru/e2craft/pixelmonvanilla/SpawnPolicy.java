package ru.e2craft.pixelmonvanilla;
public final class SpawnPolicy {
    private SpawnPolicy() {}
    public static boolean bypassReplacement(String namespace, String mobId, String dimension, boolean enabled, boolean onlyOverworld, boolean preservePixelmonVillagers) {
        if (!enabled || !"minecraft".equals(namespace)) return false;
        if (onlyOverworld && !"minecraft:overworld".equals(dimension)) return false;
        if (preservePixelmonVillagers && ("villager".equals(mobId) || "wandering_trader".equals(mobId) || "zombie_villager".equals(mobId))) return false;
        return true;
    }
}