-- HordesRU 1.4 -- supplemental translation adapter for Hordes of Azeroth 0.6.x.
-- Loads AFTER HordesRU.lua; no WoW.exe, stock game Lua, MPQ or server changes.
-- Lua 5.0 compatible: no string.match, no modern syntax.
local T = {
  ["Arcane Missiles"] = "Чародейские стрелы",
  ["Arcane Explosion"] = "Чародейский взрыв",
  ["Aimed Shot"] = "Прицельный выстрел",
  ["Blink"] = "Скачок",
  ["Major Healthstone"] = "Большой камень здоровья",
  ["Troll's Blood Potion"] = "Зелье крови тролля",
  ["Tough Jerky"] = "Вяленое мясо",
  ["Burning"] = "Горение",
  ["Darkmoon Card"] = "Карта Новолуния",
  ["Common Darkmoon Card"] = "Обычная карта Новолуния",
  ["Rare Darkmoon Card"] = "Редкая карта Новолуния",
  ["Epic Darkmoon Card"] = "Эпическая карта Новолуния",
  ["Legendary Darkmoon Card"] = "Легендарная карта Новолуния",
  ["Rank 1"] = "Ранг 1",
  ["Instant"] = "Мгновенно",
  ["New spell"] = "Новое заклинание",
  ["New passive"] = "Новое усиление",
  ["Damage"] = "Урон",
  ["Arcane"] = "Тайная магия",
  ["Free. Arcane Missiles is a starter spell, with Blink as your dash."] = "Бесплатно. «Чародейские стрелы» — начальное заклинание. Рывок заменён на «Скачок».",
  ["Launches 5 Arcane Missiles at the nearest enemy over 1 sec, each dealing Arcane damage. After each Blink, fires all 5 at once at the nearest enemies."] = "За 1 сек. выпускает 5 чародейских стрел по ближайшему врагу. После «Скачка» выпускает все 5 стрел сразу по ближайшим врагам.",
  ["After 4 sec without being hit, regain 1% of your health every second."] = "После 4 сек. без урона восстанавливает 1% здоровья в секунду.",
  ["Each copy adds a bit less than the one before."] = "Каждая следующая копия даёт меньший бонус.",
  ["You have no ban slots yet."] = "Ячейки блокировки пока не открыты.",
  ["Each rank:"] = "Каждый ранг:",
  ["Can evolve into Slow Time or Presence of Mind through a Legendary rank, offered at rank 10 or higher."] = "С 10-го ранга доступна легендарная эволюция: «Замедление времени» или «Присутствие духа».",
  ["Can evolve into Fel Imps or Imp Swarm through a Legendary rank, offered at rank 10 or higher."] = "С 10-го ранга доступна легендарная эволюция: «Бесы Скверны» или «Рой бесов».",
  ["VanillaBonk"] = "Hordes of Azeroth",
}

-- Dynamic server strings need matching AFTER the numeric rolls are calculated.
local function Numbers(text)
  local a,b,c,d,e
  _,_,a,b = string.find(text, "^Turkey legs drop ([%d%.]+)%% more often and heal ([%d%.]+)%% more%.?$")
  if a then return "Окорочка выпадают на "..a.."% чаще и восстанавливают на "..b.."% больше здоровья." end
  _,_,a,b,c = string.find(text, "^When below ([%d%.]+)%% health, heal for ([%d%.]+)%% of your maximum health%. ([%d%.]+) sec cooldown%.?$")
  if a then return "При здоровье ниже "..a.."% восстанавливает "..b.."% макс. здоровья. Перезарядка "..c.." сек." end
  _,_,a,b,c = string.find(text, "^Below ([%d%.]+)%% health, heal ([%d%.]+)%% of your maximum health%. ([%d%.]+) sec cooldown;?.*$")
  if a then return "При здоровье ниже "..a.."% восстанавливает "..b.."% макс. здоровья. Перезарядка "..c.." сек." end
  _,_,a,b = string.find(text, "^Regain ([%d%.]+)%% of your health every second%.?$")
  if a then return "Восстанавливает "..a.."% здоровья в секунду." end
  _,_,a,b = string.find(text, "^([%d%.]+)/([%d%.]+) copies$")
  if a then return a.."/"..b.." копий" end
  _,_,a = string.find(text, "^Rank (%d+)$")
  if a then return "Ранг "..a end
  _,_,a = string.find(text, "^([%d%.]+) yd range$")
  if a then return "Дальность "..a.." ярд." end
  _,_,a = string.find(text, "^([%d%.]+) yd radius$")
  if a then return "Радиус "..a.." ярд." end
  _,_,a = string.find(text, "^([%d%.]+) sec cooldown$")
  if a then return "Перезарядка "..a.." сек." end
  _,_,a,b,c,d = string.find(text, "^Launches ([%d]+) Arcane Missiles at the nearest enemy over ([%d%.]+) sec, each dealing ([%d]+) to ([%d]+) Arcane damage%.")
  if a then
    local result = "За "..b.." сек. выпускает "..a.." чародейских стрел по ближайшему врагу ("..c.."–"..d.." урона тайной магией каждая)."
    if string.find(text, "After each Blink", 1, true) then result = result.." После «Скачка» все стрелы выпускаются сразу." end
    return result
  end
  _,_,a,b,c = string.find(text, "^Launches ([%d]+) Arcane Missiles at the nearest enemy over ([%d%.]+) sec, each dealing ([%d]+) Arcane damage%.")
  if a then
    local result = "За "..b.." сек. выпускает "..a.." чародейских стрел по ближайшему врагу ("..c.." урона тайной магией каждая)."
    if string.find(text, "After each Blink", 1, true) then result = result.." После «Скачка» все стрелы выпускаются сразу." end
    return result
  end
  return nil
end

local function Translate(text)
  if type(text) ~= "string" or text == "" then return text end
  if T[text] then return T[text] end
  -- Preserve inline WoW colours; the existing main add-on handles most rich text.
  if string.find(text, "|c", 1, true) or string.find(text, "|r", 1, true) then return text end
  local result = Numbers(text)
  return result or text
end

-- Keep track of English strings we see but cannot safely translate.
local function Missing(text)
  if type(text) ~= "string" or text == "" or T[text] then return end
  if not string.find(text, "[A-Za-z]") or string.find(text,"|c",1,true) then return end
  HordesRU_Untranslated = HordesRU_Untranslated or {}
  if type(HordesRU_Untranslated) == "table" then
    HordesRU_Untranslated[text] = (HordesRU_Untranslated[text] or 0) + 1
  end
end

local function UnderHordes(owner)
  local node = owner
  for i = 1, 16 do
    if not node then return false end
    if node.node or node.pair or node == getglobal("VanillaBonkOffer") then return true end
    if node.GetName then
      local name = node:GetName()
      if name and string.find(name, "VanillaBonk", 1, true) then return true end
    end
    if not node.GetParent then return false end
    node = node:GetParent()
  end
  return false
end

-- The dedicated spell tooltip is NOT GameTooltip. This fixes the unchanged
-- yellow descriptions in screenshots of spells and the class codex.
local spellLineHook, spellTitleHook, spellSmallHook, spellDoubleHook
local function HookSpellTip()
  local tip = VanillaBonkSpellTip
  if not tip then return end
  if type(tip.AddLine)=="function" and tip.AddLine ~= spellLineHook then
    local old = tip.AddLine
    spellLineHook = function(self, text, ...)
      local result = Translate(text)
      if result == text then Missing(text) end
      return old(self, result, ...)
    end
    tip.AddLine = spellLineHook
  end
  if type(tip.Title)=="function" and tip.Title ~= spellTitleHook then
    local old = tip.Title
    spellTitleHook = function(self, text, color, tags)
      local newTags=tags
      if type(tags)=="table" then
        newTags={}
        for i,tag in ipairs(tags) do
          local copy={}
          for k,v in pairs(tag) do copy[k]=v end
          copy.text=Translate(tag.text)
          newTags[i]=copy
        end
      end
      return old(self, Translate(text), color, newTags)
    end
    tip.Title = spellTitleHook
  end
  if type(tip.AddSmallLine)=="function" and tip.AddSmallLine ~= spellSmallHook then
    local old = tip.AddSmallLine
    spellSmallHook = function(self, text, ...)
      return old(self, Translate(text), ...)
    end
    tip.AddSmallLine = spellSmallHook
  end
  if type(tip.AddDoubleLine)=="function" and tip.AddDoubleLine ~= spellDoubleHook then
    local old = tip.AddDoubleLine
    spellDoubleHook = function(self, left, right, ...)
      return old(self, Translate(left), Translate(right), ...)
    end
    tip.AddDoubleLine = spellDoubleHook
  end
end

-- HordesRU 1.3 wraps FitCard for layout. We wrap THAT version rather than
-- editing original game files, preserving ability stats and network keys.
local rewardHook
local function HookReward()
  local offer = getglobal and getglobal("VanillaBonkOffer")
  if not offer or type(offer.FitCard) ~= "function" or offer.FitCard == rewardHook then return end
  local old = offer.FitCard
  rewardHook = function(card, option, width, hasLock)
    if type(option) ~= "table" then return old(card, option, width, hasLock) end
    local name = Translate(option.name)
    local description = Translate(option.description)
    local copy = option
    if name ~= option.name or description ~= option.description then
      copy = {}
      for k,v in pairs(option) do copy[k]=v end
      copy.name, copy.description = name, description
    end
    local res = old(card, copy, width, hasLock)
    if card then
      if card.name and name ~= option.name then card.name:SetText(name) end
      if card.level and card.level.GetText then
        local label=card.level:GetText()
        local result=Translate(label)
        if result~=label then card.level:SetText(result) end
      end
      if card.count and card.count.GetText then
        local label=card.count:GetText()
        local result=Translate(label)
        if result~=label then card.count:SetText(result) end
      end
    end
    if type(option.description)=="string" and description==option.description then Missing(option.description) end
    -- FitCard re-measures translated text; the original grow-to-fit logic
    -- keeps damage and ban buttons clear without manually moving widgets.
    return res
  end
  offer.FitCard = rewardHook
end

-- Stock tooltip paths used by cards, mastery, and glossary terms.
local gameLineHook
local function HookGameTip()
  local t = GameTooltip
  if not t or type(t.AddLine) ~= "function" or t.AddLine == gameLineHook then return end
  local old=t.AddLine
  gameLineHook=function(self,text,...)
    if self == GameTooltip and self.GetOwner and UnderHordes(self:GetOwner()) then
      local result=Translate(text)
      if result==text then Missing(text) end
      return old(self,result,...)
    end
    return old(self,text,...)
  end
  t.AddLine=gameLineHook
end

local controller=CreateFrame("Frame", "HordesRUOverlayController")
local deadline=0
controller:SetScript("OnUpdate",function()
  if GetTime()<deadline then return end
  deadline=GetTime()+1
  HookSpellTip()
  HookReward()
  HookGameTip()
end)
HookSpellTip()
HookReward()
HookGameTip()
if DEFAULT_CHAT_FRAME then DEFAULT_CHAT_FRAME:AddMessage("|cff55ffaa[HordesRU]|r Патч v1.4: подсказки заклинаний и сундуки") end