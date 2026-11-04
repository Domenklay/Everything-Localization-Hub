-- HordesRU v1.13: translated Glyphs for Hordes of Azeroth 0.6.x.
-- Display-only localization, original addon is untouched.
local GlyphRU={
 [2]={en="Glyph of the Packrat",name="Символ запасливости",english="+60% pickup range. Power-ups last twice as long.",description="+60% к радиусу подбора. Усиления действуют вдвое дольше."},
 [5]={en="Glyph of Second Wind",name="Символ второго дыхания",english="When an elite, mini-boss or boss dies within 30 yards, heal for 30% of your maximum health.",description="При гибели элитного врага, мини-босса или босса в пределах 30 ярдов вы восстанавливаете 30% максимального здоровья."},
 [6]={en="Glyph of the Ley Line",name="Символ силовой линии",english="Capture Ley Lines twice as fast. They offer 4 blessings to choose from instead of 3.",description="Захват силовых линий происходит вдвое быстрее. На выбор предлагается 4 благословения вместо 3."},
 [7]={en="Glyph of Windfury",name="Символ неистовства ветра",english="Your spells have a 30% chance to cast twice.",description="С вероятностью 30% ваши заклинания срабатывают дважды."},
 [8]={en="Glyph of Bloodlust",name="Символ жажды крови",english="Every 50 kills, gain 40% Haste for 8 sec.",description="За каждые 50 убийств вы получаете +40% к скорости действий на 8 сек."},
 [11]={en="Glyph of Divine Shield",name="Символ божественного щита",english="Fatal damage restores you to full health instead. Once per run.",description="Вместо смертельного урона ваше здоровье полностью восстанавливается. Один раз за забег."},
 [12]={en="Glyph of Soul Harvest",name="Символ жатвы душ",english="Every 50 kills, you deal triple damage for 2 sec.",description="За каждые 50 убийств вы наносите тройной урон в течение 2 сек."},
 [13]={en="Glyph of Vengeance",name="Символ возмездия",english="+2% Power for every 1% of health you are missing.",description="+2% к силе за каждый недостающий 1% здоровья."},
 [15]={en="Glyph of the Gambler",name="Символ азартного игрока",english="Level-up spell ranks, chest cards and Glyph offers are 1 rarity higher.",description="Редкость рангов заклинаний при повышении уровня, карт из сундуков и предлагаемых символов повышается на 1 ступень.",englishDrawback="Level-ups offer 2 choices.",drawback="При повышении уровня предлагается только 2 варианта на выбор."},
 [16]={en="Glyph of the Windseeker",name="Символ искателя ветра",english="Every 3 sec, lightning strikes up to 5 nearby enemies for 60% of a normal enemy's health on Normal. Always critically strikes.",description="Раз в 3 сек. молния поражает до 5 ближайших врагов, нанося урон в размере 60% здоровья обычного врага на нормальной сложности. Удар всегда критический."},
 [17]={en="Glyph of Ragnaros",name="Символ Рагнароса",english="Every 6 sec, a meteor strikes the largest nearby group of enemies.",description="Каждые 6 сек. метеорит поражает самую большую ближайшую группу врагов."},
 [18]={en="Glyph of Blinding Speed",name="Символ ослепительной скорости",english="+1 dash charge. Reduces the cooldown of your dash by 30%.",description="+1 заряд рывка. Время восстановления рывка сокращается на 30%."},
 [19]={en="Glyph of Foresight",name="Символ предвидения",english="+2 rerolls each stage.",description="+2 переброса на каждом этапе."},
 [20]={en="Glyph of the Treasure Hunter",name="Символ охотника за сокровищами",english="A chest appears near you every 2 minutes.",description="Каждые 2 минуты рядом с вами появляется сундук."},
 [21]={en="Glyph of the Scavenger",name="Символ собирателя",english="Elites you kill drop a power-up.",description="Убитые вами элитные враги оставляют усиление."},
 [22]={en="Glyph of the Prodigy",name="Символ одарённости",english="Your starter spell starts 2 ranks higher and deals 25% more damage.",description="Начальное заклинание получает +2 ранга и наносит на 25% больше урона."},
 [23]={en="Glyph of Ambition",name="Символ амбиций",english="Whenever mini-bosses appear, 1 more comes. Mini-bosses give double rewards.",description="При появлении мини-боссов приходит ещё один. Награды за мини-боссов удваиваются.",englishDrawback="Mini-bosses deal 25% more damage.",drawback="Мини-боссы наносят на 25% больше урона."},
 [24]={en="Glyph of the Hunt",name="Символ охоты",english="Twice as many elites, each giving triple experience.",description="Элитных врагов становится вдвое больше, каждый приносит втрое больше опыта.",englishDrawback="More elites, more danger.",drawback="Больше элитных врагов — больше опасности."},
 [25]={en="Glyph of the Last Stand",name="Символ последнего рубежа",english="Below 50% health, +40% Haste and +20% movement speed.",description="При здоровье ниже 50%: +40% к скорости действий и +20% к скорости передвижения."},
 [27]={en="Glyph of the Nomad",name="Символ кочевника",english="+25% Power while moving.",description="Во время движения: +25% к силе.",englishDrawback="Losing health flips it to -25% Power for 5 sec. Shield absorbs don't count.",drawback="При потере здоровья бонус сменяется штрафом −25% к силе на 5 сек. Поглощение урона щитом не считается."},
 [28]={en="Glyph of Divination",name="Символ прорицания",english="Level-ups offer 1 additional choice.",description="При повышении уровня предлагается 1 дополнительный вариант на выбор."},
 [29]={en="Glyph of Frost Nova",name="Символ кольца льда",english="When an enemy hits you, freeze normal enemies within 10 yards for 2 sec. 15 sec cooldown.",description="Когда враг попадает по вам, обычные враги в пределах 10 ярдов замораживаются на 2 сек. Перезарядка: 15 сек."},
 [30]={en="Glyph of Vanish",name="Символ исчезновения",english="After you dash, you are immune to damage for 1 sec and your next spell critically strikes.",description="После рывка вы неуязвимы на 1 сек., а следующее заклинание наносит критический удар."},
 [31]={en="Glyph of Corpse Explosion",name="Символ взрыва трупа",english="Enemies you kill have a 15% chance to explode for 40% of their health to enemies within 6 yards.",description="Убитые вами враги с вероятностью 15% взрываются, нанося врагам в радиусе 6 ярдов урон в размере 40% своего здоровья."},
 [32]={en="Glyph of Execute",name="Символ казни",english="Normal enemies below 15% health die instantly. Elites, mini-bosses and bosses below 30% health take 25% more damage.",description="Обычные враги с запасом здоровья ниже 15% погибают мгновенно. Элита, мини-боссы и боссы при здоровье ниже 30% получают на 25% больше урона."},
 [33]={en="Glyph of Cleave",name="Символ рассечения",english="Damage beyond a killing blow strikes the nearest enemy within 10 yards.",description="Избыточный урон смертельного удара переходит на ближайшего врага в пределах 10 ярдов."},
 [34]={en="Glyph of Multi-Shot",name="Символ залпа",english="Your spells fire 1 additional bolt.",description="Ваши заклинания выпускают 1 дополнительный снаряд.",englishDrawback="Your spells deal 15% less damage.",drawback="Ваши заклинания наносят на 15% меньше урона."},
 [35]={en="Glyph of Echoes",name="Символ отголосков",english="Spell rank picks have a 25% chance to give 1 additional rank.",description="При выборе ранга заклинания с вероятностью 25% вы получаете 1 дополнительный ранг."},
 [36]={en="Glyph of Ignite",name="Символ воспламенения",english="Critical strikes apply 2 stacks of Burning.",description="Критические удары накладывают 2 эффекта горения."},
 [37]={en="Glyph of Soul Siphon",name="Символ поглощения душ",english="+1% Power for every 500 kills.",description="+1% к силе за каждые 500 убийств."},
 [38]={en="Glyph of Shadowmourne",name="Символ Темной Скорби",english="Every 50 kills, the souls you gathered strike all enemies within 20 yards for 3 times a normal enemy's health on Normal.",description="Каждые 50 убийств собранные души поражают всех врагов в пределах 20 ярдов, нанося урон в размере тройного здоровья обычного врага на нормальной сложности."},
 [39]={en="Glyph of Raise Dead",name="Символ воскрешения мёртвых",english="Elites you kill rise as skeletons and fight for you for 20 sec. Up to 5 at a time.",description="Убитые вами элитные враги воскресают скелетами и сражаются на вашей стороне 20 сек. Одновременно — не более 5."},
}
local ByEN, ByDescription, SeenDrawback={}, {}, {}
for id,v in pairs(GlyphRU) do ByEN[v.en]=v; ByDescription[v.english]=v end
local function FontPath()
 local f=(HordesRU_Options and HordesRU_Options.font=="sc") and "NotoSansSC-Regular.otf" or "NotoSansKR-Regular.otf"
 return "Interface\\AddOns\\HordesOfAzeroth\\Fonts\\"..f
end
local function Font(fs,limit)
 if not fs or not fs.GetFont or not fs.SetFont then return end
 local ok,old,size=pcall(fs.GetFont,fs)
 if not ok or type(size)~="number" then return end
 local want=limit and math.min(size,limit) or size
 local p=FontPath()
 if old~=p or size~=want then pcall(fs.SetFont,fs,p,want,"") end
end
local function Replace(fs,value,size)
 if not fs or not fs.GetText or not fs.SetText then return end
 if value and fs:GetText()~=value then pcall(fs.SetText,fs,value) end
 Font(fs,size)
end
local function Info()
 if type(VanillaBonkGlyphInfo)~="table" then return end
 for id,g in pairs(VanillaBonkGlyphInfo) do
  local v=GlyphRU[tonumber(id)]
  if v and type(g)=="table" then
   if g.name==v.en then g.name=v.name end
   if g.description==v.english then g.description=v.description end
   if v.englishDrawback and g.drawback==v.englishDrawback then
    SeenDrawback[g.drawback]=v.drawback
    g.drawback=v.drawback
   end
  end
 end
end
local rarity={Common="обычный",Uncommon="необычный",Rare="редкий",Epic="эпический",Legendary="легендарный"}
local function Kind(t)
 if type(t)~="string" then return t end
 for en,ru in pairs(rarity) do t=string.gsub(t,en,ru) end
 return string.gsub(t,"Glyph","Символ")
end
local captions={
 {"Your first Glyph lasts the whole run.","Первый символ действует до конца забега."},
 {"Your second Glyph lasts the whole run.","Второй символ действует до конца забега."},
 {"Your third Glyph lasts the whole run.","Третий символ действует до конца забега."},
 {"Your fourth Glyph lasts the whole run.","Четвёртый символ действует до конца забега."},
 {"Your fifth Glyph lasts the whole run.","Пятый символ действует до конца забега."},
 {"Your sixth Glyph lasts the whole run.","Шестой символ действует до конца забега."},
 {"Your seventh Glyph lasts the whole run.","Седьмой символ действует до конца забега."},
 {"Your next Glyph lasts the whole run.","Следующий символ действует до конца забега."},
 {"The run is paused while you choose.","Забег приостановлен на время выбора."},
}
local function Caption(t)
 if type(t)~="string" then return t end
 for _,pair in ipairs(captions) do
  local p=string.gsub(pair[1],"([^%w])","%%%1")
  t=string.gsub(t,p,pair[2])
 end
 return t
end
local function Cards()
 local f=VanillaBonkGlyphs
 if not f or not f.IsShown or not f:IsShown() then return end
 Replace(f.title,nil,40)
 if f.subtitle and f.subtitle.GetText then Replace(f.subtitle,Caption(f.subtitle:GetText()),12) end
 if type(f.cards)~="table" then return end
 for _,c in ipairs(f.cards) do
  if c.IsShown and c:IsShown() then
   local n=c.name and c.name.GetText and c.name:GetText()
   local d=c.description and c.description.GetText and c.description:GetText()
   local v=ByEN[n] or ByDescription[d]
   if not v then for _,x in pairs(GlyphRU) do if x.name==n then v=x;break end end end
   if v then
    if n==v.en then Replace(c.name,v.name,13) else Font(c.name,13) end
    if d==v.english then Replace(c.description,v.description,11) else Font(c.description,11) end
    if v.englishDrawback and c.drawback and c.drawback.GetText and c.drawback:GetText()==v.englishDrawback then
     Replace(c.drawback,v.drawback,10)
    else Font(c.drawback,10) end
   end
   if c.kind and c.kind.GetText then Replace(c.kind,Kind(c.kind:GetText()),11) end
   Font(c.badLabel,10)
  end
 end
end
local function Tooltip()
 local tip=GameTooltip
 if not tip or not tip.IsShown or not tip:IsShown() or not tip.GetOwner then return end
 local owner=tip:GetOwner()
 local valid=false
 for i=1,20 do
  if owner==VanillaBonkGlyphs then valid=true;break end
  if not owner or not owner.GetParent then break end
  owner=owner:GetParent()
 end
 if not valid then return end
 local n=tip.NumLines and tip:NumLines() or 0
 for i=1,n do
  local fs=getglobal and getglobal("GameTooltipTextLeft"..i)
  if fs and fs.GetText then
   local s=fs:GetText()
   local v=ByEN[s] or ByDescription[s]
   local t=v and (s==v.en and v.name or v.description) or SeenDrawback[s] or Kind(s)
   Replace(fs,t,i==1 and 13 or 11)
  end
 end
end
local timer=CreateFrame("Frame","HordesRUGlyphs113")
local count=0
timer:SetScript("OnUpdate",function()
 count=count+(arg1 or 0)
 if count<0.18 then return end
 count=0
 Info();Cards();Tooltip()
end)
Info()
