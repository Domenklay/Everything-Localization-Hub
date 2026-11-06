#!/usr/bin/env python3
"""Check the committed HordesRU release against the installable source tree."""
from pathlib import Path
from zipfile import ZipFile

ROOT = Path(__file__).resolve().parents[1]
ADDON = ROOT / "HordesRU"
ARCHIVE = ROOT / "releases" / "HordesRU_v1.21_FULL.zip"
TOC = (ADDON / "HordesRU.toc").read_text(encoding="utf-8")
assert "## Version: 1.21" in TOC
assert "рус" in TOC.lower()
MODULES = [line.strip() for line in TOC.splitlines()
           if line.strip().endswith(".lua") and not line.startswith("##")]
assert len(MODULES) == 7 and len(MODULES) == len(set(MODULES)), MODULES
assert MODULES[-1] == "HordesRU_Runtime.lua"
assert "HordesRU_TranslateDisplay = function(value)" in (ADDON / "HordesRU.lua").read_text(encoding="utf-8")
assert "pcall(HordesRU_TranslateDisplay,s)" in (ADDON / "HordesRU_Runtime.lua").read_text(encoding="utf-8")

with ZipFile(ARCHIVE) as z:
    assert z.testzip() is None, "Corrupt ZIP/CRC"
    expected = {}
    for name in MODULES + ["HordesRU.toc"]:
        expected["benilla-config/AddOns/HordesRU/" + name] = (ADDON / name).read_bytes()
    for name in ["BonkGlueLocaleRuRU.lua", "BonkGlueRuUI.lua", "GlueXML.toc"]:
        expected["OPTIONAL_CharacterScreen/Interface/GlueXML/" + name] = (
            ROOT / "GlueXML" / name).read_bytes()
    assert set(z.namelist()) == set(expected) | {"INSTALL.txt"}, (
        "Wrong archive members", set(z.namelist()) ^ (set(expected) | {"INSTALL.txt"}))
    for target, source in expected.items():
        assert z.read(target) == source, f"Source/ZIP mismatch: {target}"
    assert "рус" in z.read("INSTALL.txt").decode("utf-8").lower()

assert "русификатор" in (ROOT / "README.md").read_text(encoding="utf-8").lower()
assert "русификатор" in (ROOT.parent / "README.md").read_text(encoding="utf-8").lower()
print("HordesRU v1.21: 7 Lua modules, 3 optional GlueXML files, CRC, versions, README: OK")
