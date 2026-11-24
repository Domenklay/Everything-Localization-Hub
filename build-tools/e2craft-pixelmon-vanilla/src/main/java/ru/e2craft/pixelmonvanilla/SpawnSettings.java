package ru.e2craft.pixelmonvanilla;
import java.nio.file.*;
import java.nio.charset.StandardCharsets;
import java.io.*;
import java.util.Properties;
public final class SpawnSettings {
    public final boolean enabled, onlyOverworld, preservePixelmonVillagers, debug;
    private static volatile SpawnSettings instance;
    private SpawnSettings(boolean e,boolean o,boolean p,boolean d) { enabled=e; onlyOverworld=o; preservePixelmonVillagers=p; debug=d; }
    public static SpawnSettings get() {
        if(instance != null) return instance;
        synchronized(SpawnSettings.class) { if(instance==null) instance=load(); return instance; }
    }
    private static SpawnSettings load() {
        Path file=Path.of("config","e2craft_pixelmon_vanilla.properties");
        if(!Files.exists(file)) try {
            Files.createDirectories(file.getParent());
            Files.writeString(file,"enabled=true\nonly_overworld=true\npreserve_pixelmon_villagers=true\ndebug=false\n",StandardCharsets.UTF_8);
        } catch(IOException ex) { System.err.println(ex.getMessage()); }
        Properties props=new Properties();
        try(Reader r=Files.newBufferedReader(file,StandardCharsets.UTF_8)) {props.load(r);} catch(IOException ex) {System.err.println(ex.getMessage());}
        return new SpawnSettings(Boolean.parseBoolean(props.getProperty("enabled","true")),Boolean.parseBoolean(props.getProperty("only_overworld","true")),Boolean.parseBoolean(props.getProperty("preserve_pixelmon_villagers","true")),Boolean.parseBoolean(props.getProperty("debug","false")));
    }
}