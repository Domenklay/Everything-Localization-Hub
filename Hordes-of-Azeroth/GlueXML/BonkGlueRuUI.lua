-- HordesRU v1.20: optional language selector on the pre-login character screen.
local gui=BonkHeroFrame
local locale=BonkGlueLocale
if gui and locale then
 local kr="Interface\\AddOns\\HordesOfAzeroth\\Fonts\\NotoSansKR-Regular.otf"
 local sc="Interface\\AddOns\\HordesOfAzeroth\\Fonts\\NotoSansSC-Regular.otf"
 local styled=setmetatable({}, {__mode="k"})
 local function useFont(fs,size,flags)
  if not fs or type(fs.SetFont)~="function" then return end
  local ok,result=pcall(fs.SetFont,fs,kr,size,flags or "")
  if not ok or result==false then pcall(fs.SetFont,fs,sc,size,flags or "") end
 end
 local function scan(frame,depth)
  if not frame or depth>13 then return end
  if type(frame.GetRegions)=="function" then
   local regions={frame:GetRegions()}
   for _,region in ipairs(regions) do
    if region and region.GetObjectType and region:GetObjectType()=="FontString" and
      region.GetFont and not styled[region] then
     local ok,path,size,flags=pcall(region.GetFont,region)
     if ok and type(size)=="number" and size>0 then
      local width=region.GetWidth and region:GetWidth() or 0
      if width>0 and width<105 and size>10 then size=10 end
      useFont(region,size,flags)
      styled[region]=true
     end
    end
   end
  end
  if frame.GetChildren then
   local children={frame:GetChildren()}
   for _,child in ipairs(children) do scan(child,depth+1) end
  end
 end
 local btn=CreateFrame("Button","HordesRUGlueLangButton",gui)
 btn:SetWidth(112); btn:SetHeight(24)
 btn:SetPoint("TOP",gui,"TOP",275,-50)
 if btn.SetBackdrop then
  btn:SetBackdrop({bgFile="Interface\\Tooltips\\UI-Tooltip-Background",
   edgeFile="Interface\\Tooltips\\UI-Tooltip-Border", tile=true,
   tileSize=16,edgeSize=12,insets={left=3,right=3,top=3,bottom=3}})
  btn:SetBackdropColor(0.04,0.05,0.07,0.9)
 end
 local label=btn:CreateFontString(nil,"OVERLAY")
 label:SetAllPoints(btn);useFont(label,11,"")
 if label.SetJustifyH then label:SetJustifyH("CENTER") end
 btn:SetFontString(label)
 local note=gui:CreateFontString(nil,"OVERLAY")
 note:SetWidth(230);note:SetHeight(32)
 note:SetPoint("TOP",btn,"BOTTOM",0,-3)
 useFont(note,10,"")
 if note.SetJustifyH then note:SetJustifyH("CENTER") end
 note:SetText("")
 local function ru() return locale.language=="ruRU" end
 local function labelUpdate()
  btn:SetText(ru() and "Язык: RU / EN" or "Lang: EN / RU")
 end
 btn:SetScript("OnClick",function()
  local desired=ru() and "enUS" or "ruRU"
  if type(RegisterCVar)=="function" then pcall(RegisterCVar,"hoaLanguage","enUS") end
  local ok=false
  if type(SetCVar)=="function" then ok=pcall(SetCVar,"hoaLanguage",desired) end
  if ok and type(GetCVar)=="function" then
   local good,value=pcall(GetCVar,"hoaLanguage")
   ok=good and value==desired
  end
  if ok then
   note:SetText(ru() and "Язык сохранён. Перезапустите игру." or "Language saved. Restart the game.")
  else
   note:SetText(ru() and "Не удалось сохранить язык." or "Could not save language.")
  end
 end)
 labelUpdate()
 local updater=CreateFrame("Frame","HordesRUGlueUpdater",gui)
 local last=0
 local frames=0
 updater:SetScript("OnUpdate",function()
  if not gui:IsVisible() then return end
  local now=type(GetTime)=="function" and GetTime() or 0
  if now==0 then
   frames=frames+1
   if frames<90 then return end
   frames=0
  else
   if now-last<1 then return end
   last=now
  end
  scan(gui,0)
  labelUpdate()
 end)
end
