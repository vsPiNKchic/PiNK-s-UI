for i=1, 12 do
  _G["ActionButton" .. i]:ClearAllPoints()
  _G["ActionButton" .. i]:SetPoint(
    "LEFT", --Moved Frame Anchor
    ActionBarsContainer, --Anchor
    "LEFT", --Parent Frame Anchor
    0, --X Position Offset
    0 --Y Position Offset
  )
end






--Frame:SetFrameStrata("LOW")
--Frame:SetFrameLevel(1)





local frame = CreateFrame(
  "FRAME", --Frame Type
  "FooAddonFrame" --Frame Name
)
frame:RegisterEvent("PLAYER_LOGIN");
local function eventHandler(self, event, ...)
do something
end

frame:SetScript(
  "OnEvent",  --Handler Event Type
  eventHandler --Function Name
)

