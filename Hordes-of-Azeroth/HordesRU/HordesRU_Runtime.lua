-- HordesRU 1.19: integrated reward localization and compact card layout.
-- Display only. No changes to game scripts, game state, or server packets.
local KR = "Interface\\AddOns\\HordesOfAzeroth\\Fonts\\NotoSansKR-Regular.otf"
local SC = "Interface\\AddOns\\HordesOfAzeroth\\Fonts\\NotoSansSC-Regular.otf"
local backup = {
 ["Affliction"]="Колдовство", ["Demonology"]="Демонология", ["Destruction"]="Разрушение",
 ["Beast Mastery"]="Повелитель зверей", ["Marksmanship"]="Стрельба", ["Survival"]="Выживание",
 ["Hunter Talents"]="Таланты охотника", ["Warlock Talents"]="Таланты чернокнижника",
 ["Chest"]="Сундук", ["Choose a Darkmoon Card"]="Выберите карту Новолуния",
 ["Common Darkmoon Card"]="Обычная карта Новолуния", ["Uncommon Darkmoon Card"]="Необычная карта Новолуния", ["Rare Darkmoon Card"]="Редкая карта Новолуния",
 ["Epic Darkmoon Card"]="Эпическая карта Новолуния", ["Legendary Darkmoon Card"]="Легендарная карта Новолуния",
 ["Lock"]="Закрепить", ["Locked"]="Закреплено", ["Common"]="Обычная", ["Uncommon"]="Необычная",
 ["Your spells have a 4% chance to gain +400% Power for that cast."]="Заклинания с шансом 4% получают +400% к силе на одно применение.",
 ["Rare"]="Редкая", ["Epic"]="Эпическая", ["Legendary"]="Легендарная",
 ["Presets"]="Наборы талантов", ["Activate"]="Активировать", ["Reset Talents"]="Сбросить таланты",
 ["Earn talent points from Mastery levels. Right-click a talent to refund a point."]=
 "Получайте очки талантов за уровни мастерства. ПКМ по таланту возвращает очко."
}
-- Official bonk_passive entries, including passives rolled after a reroll.
local rewardNames={
 ["Blessing of Might"]="Благословение могущества", ["Berserking"]="Берсерк",
 ["Aspect of the Cheetah"]="Дух гепарда", ["Power Word: Fortitude"]="Слово силы: Стойкость",
 ["Spirit"]="Дух", ["Rested"]="Отдохнувший", ["Goblin Grabber"]="Гоблинский хвататель",
 ["Arcane Brilliance"]="Чародейская гениальность", ["Devotion Aura"]="Аура благочестия",
 ["Elixir of Agility"]="Эликсир ловкости", ["Elixir of the Mongoose"]="Эликсир мангуста",
 ["Inner Fire"]="Внутренний огонь", ["Lucky Rabbit's Foot"]="Счастливая кроличья лапка",
 ["Hand of Justice"]="Рука правосудия", ["Vampiric Embrace"]="Объятия вампира",
 ["Toxicology"]="Токсикология", ["Pyromaniac"]="Пироман",
 ["Serrated Blades"]="Зазубренные клинки",
}
local rewardEffects={
 ["+8% Haste."]="+8% к скорости.",
 ["+10% Area."]="+10% к области действия.",
 ["Burns every enemy within 10 yards of you with holy light, dealing Holy damage every sec. Enemies that strike you take double."]=
 "Поражает всех врагов в пределах 10 ярдов светом каждую секунду. Атакующие вас враги получают двойной урон.",
}

local function TR(s)
 if type(s) ~= "string" then return s end
 if rewardNames[s] then return rewardNames[s] end
 if rewardEffects[s] then return rewardEffects[s] end
 if type(HordesRU_FullDictionary)=="table" and HordesRU_FullDictionary[s] then return HordesRU_FullDictionary[s] end
 if type(HordesRU_FullTranslate)=="function" then
  local ok, value=pcall(HordesRU_FullTranslate,s)
  if ok and type(value)=="string" and value~=s then return value end
 end
 -- The 1.17 runtime consulted only FullData; card descriptions are in Expansion.
 if type(HordesRU_ExpansionTranslate)=="function" then
  local ok, value=pcall(HordesRU_ExpansionTranslate,s)
  if ok and type(value)=="string" and value~=s then return value end
 end
 if backup[s] then return backup[s] end
 local _,_,n=string.find(s,"^(%d+) points to unlock$")
 if n then return n.." очков для открытия" end
 _,_,n=string.find(s,"^(%d+) points$")
 if n then return n.." очков" end
 local changed=string.gsub(s,"^Mastery ","Мастерство ")
 changed=string.gsub(changed,"(%d+) Talent Points","%1 очков талантов")
 changed=string.gsub(changed,"^Reroll %((%d+)%)","Переброс (%1)")
 changed=string.gsub(changed,"^Skip %((%d+)%)","Пропуск (%1)")
 return changed
end
local function font()
 if HordesRU_Options and HordesRU_Options.font=="sc" then return SC end
 return KR
end
local function text(w)
 if not w or type(w.GetText)~="function" or type(w.SetText)~="function" then return end
 local ok, orig=pcall(w.GetText,w)
 if not ok or type(orig)~="string" then return end
 local ru=TR(orig)
 if ru~=orig then pcall(w.SetText,w,ru) end
 if type(w.GetFont)=="function" and type(w.SetFont)=="function" then
  local good,old,size=pcall(w.GetFont,w)
  if good and type(size)=="number" and size>0 and old~=font() then pcall(w.SetFont,w,font(),size,"") end
 end
end
local function scan(w, depth, seen)
 if not w or seen[w] or depth>20 then return end
 seen[w]=true
 if type(w.IsShown)=="function" then
  local ok,visible=pcall(w.IsShown,w)
  if ok and not visible then return end
 end
 text(w)
 if type(w.GetRegions)=="function" then
  local regions={w:GetRegions()}
  for _,r in ipairs(regions) do text(r) end
 end
 if type(w.GetChildren)=="function" then
  local children={w:GetChildren()}
  for _,c in ipairs(children) do scan(c,depth+1,seen) end
 end
end
local function node(n, seen)
 if type(n)~="table" then return end
 seen=seen or {}
 if seen[n] then return end
 seen[n]=true
 local talents=HordesRU_FullMastery
 local row=type(talents)=="table" and talents[tonumber(n.id)]
 for _,spec in ipairs({{"name","_HordesRU_EnglishName",1,2},{"description","_HordesRU_EnglishDescription",3,4}}) do
  local field,cache,enIndex,ruIndex=spec[1],spec[2],spec[3],spec[4]
  if type(n[field])=="string" then
   local en=n[cache] or n[field]
   local ru=TR(en)
   if ru==en and type(row)=="table" and row[enIndex]==en then ru=row[ruIndex] end
   if type(ru)=="string" and ru~="" and ru~=en then n[cache]=en; n[field]=ru end
  end
 end
 if type(n.pair)=="table" then for _,p in ipairs(n.pair) do node(p,seen) end end
end
local function tree(t)
 if type(t)=="table" and type(t.name)=="string" then
  local en=t._HordesRU_EnglishName or t.name
  local ru=TR(en)
  if ru~=en then t._HordesRU_EnglishName=en; t.name=ru end
 end
end
local function data(d)
 if type(d)~="table" then return end
 if type(d.trees)=="table" then for _,t in pairs(d.trees) do tree(t) end end
 if type(d.nodes)=="table" then local seen={}; for _,n in pairs(d.nodes) do node(n,seen) end end
end
local CARD_RARITY = { "обычная", "необычная", "редкая", "эпическая", "легендарная" }
local CARD_COLOR = { "ffffffff", "ff20ff20", "ff0070dd", "ffa335ee", "ffff8000" }
local function fixCardRarity(card, option)
 if type(option)~="table" or option.kind~="c" or not card or not card.level then return end
 local value=tonumber(option.rarity)
 if not value then return end
 local index=value+1
 if not CARD_RARITY[index] then return end
 local caption="Карта Новолуния: |c"..CARD_COLOR[index]..CARD_RARITY[index].."|r"
 if type(card.level.GetText)=="function" and card.level:GetText()~=caption then
  pcall(card.level.SetText,card.level,caption)
 end
 if type(card.level.SetFont)=="function" then pcall(card.level.SetFont,card.level,font(),10,"") end
end
local function fitOfferButton(button, caption)
 if not button or type(button.GetText)~="function" then return end
 local ok, existing=pcall(button.GetText,button)
 if not ok or type(existing)~="string" then return end
 -- Original button width is 120 px. A separate R/X hotkey occupies its right edge.
 local _,_,count=string.find(existing,"%((%d+)%)")
 if count then
  local desired=caption.." ("..count..")"
  if existing~=desired and type(button.SetText)=="function" then pcall(button.SetText,button,desired) end
 end
 local fs=type(button.GetFontString)=="function" and button:GetFontString()
 if fs and type(fs.SetFont)=="function" then pcall(fs.SetFont,fs,font(),10,"") end
 -- Leave space for R/X binding prompt at the right edge of each 120px button.
 if fs and type(fs.ClearAllPoints)=="function" then
  fs:ClearAllPoints()
  fs:SetWidth(92)
  fs:SetPoint("LEFT",button,"LEFT",5,0)
  if fs.SetJustifyH then fs:SetJustifyH("CENTER") end
 end
 local hint=button.keyPrompt
 if hint and type(hint.SetFont)=="function" then pcall(hint.SetFont,hint,font(),10,"OUTLINE") end
end

-- Fit translated strings within the native 220-pixel cards BEFORE overflow growth.
local function fitRussianCard(card, option, width, locked)
 if not card or not card.name or not card.description then return end
 width=tonumber(width) or (card.GetWidth and card:GetWidth()) or 220
 if width<100 then width=220 end
 local name=card.name:GetText() or ""
 local bytes=string.len(name)
 local size=15
 if bytes>44 then size=12 elseif bytes>28 then size=13 end
 card.name:SetWidth(width-34)
 card.name:SetFont(font(),size,"")
 if card.level then
  card.level:SetWidth(width-24)
  card.level:SetFont(font(),10,"")
 end
 if card.count then card.count:SetFont(font(),10,"") end
 if locked and card.lock then
  local label=card.lock:GetText() or ""
  if label=="Lock" or label=="Заблокировать" then card.lock:SetText("Закрепить") end
  if label=="Locked" or label=="Заблокировано" then card.lock:SetText("Закреплено") end
  local labelFont=card.lock.GetFontString and card.lock:GetFontString()
  if labelFont then labelFont:SetFont(font(),9,"") end
 end
 if type(option)~="table" or
    (type(option.stats)=="table" and table.getn(option.stats)>0) then return end
 local description=card.descriptionText or ""
 local top=option.kind=="c" and 158 or 104
 local nameH=card.name:GetHeight() or 18
 local levelH=card.level and card.level:GetHeight() or 13
 local damage=(type(option.damageAfter)=="string" and option.damageAfter~="") and 18 or 0
 local cardHeight=card:GetHeight() or 300
 local used=top+nameH+4+levelH+11+1+10
 local room=math.max(12,cardHeight-used-(locked and 46 or 18)-damage)
 local measure=card.measure
 local needed=0
 local bodySize=11
 card.description:SetWidth(width-44)
 if measure then
  measure:SetWidth(width-44)
  measure:SetText(description)
  while bodySize>=9 do
   measure:SetFont(font(),bodySize,"")
   needed=measure:GetHeight() or 0
   if needed<=room or bodySize==9 then break end
   bodySize=bodySize-1
  end
 end
 card.description:SetFont("P",font(),bodySize,"")
 card.description:SetHeight(room)
 card.overflow=math.max(0,needed-room)
end

local nHook,tHook,sHook,cHook=nil,nil,nil,nil
local function hook()
 local talents=VanillaBonkTalents
 if type(talents)=="table" then
  if type(talents.ParseNode)=="function" and talents.ParseNode~=nHook then
   local previous=talents.ParseNode
   nHook=function(n,f) local r=previous(n,f); node(n); return r end
   talents.ParseNode=nHook
  end
  if type(talents.ParseTree)=="function" and talents.ParseTree~=tHook then
   local previous=talents.ParseTree
   tHook=function(t,f) local r=previous(t,f); tree(t); return r end
   talents.ParseTree=tHook
  end
  if type(talents.Show)=="function" and talents.Show~=sHook then
   local previous=talents.Show
   sHook=function(shop,d,top) data(d); return previous(shop,d,top) end
   talents.Show=sHook
  end
 end
 local offer=VanillaBonkOffer
 if type(offer)=="table" and type(offer.FitCard)=="function" and offer.FitCard~=cHook then
  local previous=offer.FitCard
  cHook=function(card,option,width,locked)
   if type(option)~="table" then return previous(card,option,width,locked) end
   local ruName,ruDesc=TR(option.name),TR(option.description)
   if ruDesc==option.description and type(HordesRU_AbilityDescription)=="function" then
    local ok, value=pcall(HordesRU_AbilityDescription,option.name,option.description)
    if ok and type(value)=="string" and value~="" then ruDesc=value end
   end
   local copy=option
   if ruName~=option.name or ruDesc~=option.description or
      (type(option.stats)=="table" and table.getn(option.stats)>0) then
    copy={}
    for k,v in pairs(option) do copy[k]=v end
    copy.name=ruName; copy.description=ruDesc
    if type(option.stats)=="table" and table.getn(option.stats)>0 then
     copy.stats={}
     for i,stat in ipairs(option.stats) do
      local row={}
      for k,v in pairs(stat) do row[k]=v end
      row.label=TR(row.label)
      copy.stats[i]=row
     end
    end
   end
   -- Initial name/rarity are already set by ShowOffer; translate before
   -- the original FitCard measures title and description heights.
   if card and card.name then card.name:SetText(ruName or option.name or "") end
   if card and card.level then text(card.level); fixCardRarity(card,option) end
   local result=previous(card,copy,width,locked)
   if card then
    if card.name then card.name:SetText(ruName or option.name or "") end
    text(card.name); text(card.level); text(card.count)
    fixCardRarity(card,option)
    fitRussianCard(card,copy,width,locked)
   end
   return result
  end
    offer.FitCard=cHook
 end
end
local function refresh()
 if VanillaBonkLocale and VanillaBonkLocale.language~="ruRU" then VanillaBonkLocale.language="ruRU" end
 hook()
 local shop=getglobal and getglobal("VanillaBonkShop") or VanillaBonkShop
 if shop and shop.IsShown and shop:IsShown() then scan(shop,0,{}) end
 local offer=VanillaBonkOffer
 if offer and offer.IsShown and offer:IsShown() then
  text(offer.title); text(offer.subtitle); text(offer.hint); text(offer.reroll); text(offer.skip)
  scan(offer,0,{})
  if type(offer.cards)=="table" then
   for _,card in ipairs(offer.cards) do
    if card.IsShown and card:IsShown() and card.lock then
     local name=card.lock:GetText() or ""
     if name=="Заблокировать" or name=="Lock" then card.lock:SetText("Закрепить") end
     if name=="Заблокировано" or name=="Locked" then card.lock:SetText("Закреплено") end
     local fs=card.lock.GetFontString and card.lock:GetFontString()
     if fs then fs:SetFont(font(),9,"") end
    end
   end
  end
  fitOfferButton(offer.reroll,"Переброс")
  fitOfferButton(offer.skip,"Пропуск")
 end
end
SLASH_HORDESRUVERIFY1="/hrucheck"
SlashCmdList["HORDESRUVERIFY"]=function()
 local ok=type(HordesRU_FullDictionary)=="table" and type(HordesRU_FullMastery)=="table"
 if DEFAULT_CHAT_FRAME then DEFAULT_CHAT_FRAME:AddMessage(
  "|cff55ff99[HordesRU]|r 1.19: main catalogue: "..(ok and "OK" or "MISSING")..
  "; font: "..((HordesRU_Options and HordesRU_Options.font) or "kr")) end
 refresh()
end
local frame=CreateFrame("Frame","HordesRU119Runtime")
local next=0
frame:SetScript("OnUpdate",function()
 local now=GetTime()
 if now<next then return end
 next=now+0.65
 refresh()
end)
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent",refresh)
refresh()
