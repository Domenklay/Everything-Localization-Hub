package ru.e2craft.pixelmonvanilla;
import net.neoforged.fml.common.Mod;
@Mod(E2CraftPixelmonVanilla.MOD_ID)
public final class E2CraftPixelmonVanilla {
    public static final String MOD_ID = "e2craft_pixelmon_vanilla";
    public E2CraftPixelmonVanilla() {
        SpawnSettings.get();
        System.out.println("[E2Craft Pixelmon Vanilla Mobs] loaded");
    }
}