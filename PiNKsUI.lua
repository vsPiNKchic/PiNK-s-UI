local name,addon=...;

---------------------------
--FRAME PLACEMENT IGNORES--
---------------------------

for k, v in pairs(AntiMovement) do
  UIPARENT_MANAGED_FRAME_POSITIONS[v] = nil
end





----------------------------
--ACTIONBARS CONFIGURATION--
----------------------------

local ActionBarsContainer = CreateFrame(
  "Frame", --Frame Type
  "ActionBarsContainer", --Frame Name
  UIParent --Anchor
)
ActionBarsContainer:ClearAllPoints()
ActionBarsContainer:SetPoint(
  "CENTER", --Moved Anchor Frame
  UIParent, --Anchor
  "CENTER", --Parent Frame Name
  0, --X Position Offset
  0 --Y Position Offset
)
ActionBarsContainer:SetWidth(800)
ActionBarsContainer:SetHeight(800)
local ActionBarsContainerTexture = ActionBarsContainer:CreateTexture(
  "ActionBarsContainerTexture", --Texture Name
  "ARTWORK" --Texture Type
)
ActionBarsContainerTexture:SetWidth(800)
ActionBarsContainerTexture:SetHeight(800)
ActionBarsContainerTexture:ClearAllPoints()
ActionBarsContainerTexture:SetColorTexture(0, 1, 0, 0)
ActionBarsContainerTexture:SetAllPoints(ActionBarsContainer)

for k, v in pairs(ActionButtonsList) do
  _G[v]:ClearAllPoints()
  _G[v]:SetParent(ActionBarsContainer)
end





--------------------------------
--MICRO ELEMENTS CONFIGURATION--
--------------------------------

MicroBarHeight = CharacterMicroButton:GetHeight()

local MicroBar = CreateFrame(
  "Frame", --Frame Type
  "MicroBar", --Frame Name
  UIParent --Anchor
)
MicroBar:ClearAllPoints()
MicroBar:SetPoint(
  "CENTER", --Moved Anchor Frame
  UIParent, --Anchor
  "CENTER", --Parent Frame Name
  -975, --X Position Offset
  0 --Y Position Offset
)
MicroBar:SetWidth(272)
MicroBar:SetHeight(38)
local MicroBarTexture = MicroBar:CreateTexture(
  "MicroBarTexture", --Texture Name
  "ARTWORK" --Texture Type
)
MicroBarTexture:SetWidth(272)
MicroBarTexture:SetHeight(38)
MicroBarTexture:ClearAllPoints()
MicroBarTexture:SetColorTexture(1, 0, 0, 0)
MicroBarTexture:SetAllPoints(MicroBar)

CharacterMicroButton:SetParent(MicroBar)
CharacterMicroButton:ClearAllPoints()
CharacterMicroButton:SetPoint(
  "LEFT", --Moved Frame Anchor
  MicroBar, --Anchor
  "LEFT", --Parent Frame Anchor
  0, --X Position Offset
  10 --Y Position Offset
)

SpellbookMicroButton:SetParent(CharacterMicroButton)
SpellbookMicroButton:ClearAllPoints()
SpellbookMicroButton:SetPoint(
  "LEFT", --Moved Frame Anchor
  CharacterMicroButton, --Anchor
  "RIGHT", --Parent Frame Anchor
  -1, --X Position Offset
  0 --Y Position Offset
)

TalentMicroButton:SetParent(SpellbookMicroButton)
TalentMicroButton:ClearAllPoints()
TalentMicroButton:SetPoint(
  "LEFT", --Moved Frame Anchor
  SpellbookMicroButton, --Anchor
  "RIGHT", --Parent Frame Anchor
  -1, --X Position Offset
  0 --Y Position Offset
)

AchievementMicroButton:SetParent(TalentMicroButton)
AchievementMicroButton:ClearAllPoints()
AchievementMicroButton:SetPoint(
  "LEFT", --Moved Frame Anchor
  TalentMicroButton, --Anchor
  "RIGHT", --Parent Frame Anchor
  -1, --X Position Offset
  0 --Y Position Offset
)

QuestLogMicroButton:SetParent(AchievementMicroButton)
QuestLogMicroButton:ClearAllPoints()
QuestLogMicroButton:SetPoint(
  "LEFT", --Moved Frame Anchor
  AchievementMicroButton, --Anchor
  "RIGHT", --Parent Frame Anchor
  -1, --X Position Offset
  0 --Y Position Offset
)

GuildMicroButton:SetParent(QuestLogMicroButton)
GuildMicroButton:ClearAllPoints()
GuildMicroButton:SetPoint(
  "LEFT", --Moved Frame Anchor
  QuestLogMicroButton, --Anchor
  "RIGHT", --Parent Frame Anchor
  -1, --X Position Offset
  0 --Y Position Offset
)

LFDMicroButton:SetParent(GuildMicroButton)
LFDMicroButton:ClearAllPoints()
LFDMicroButton:SetPoint(
  "LEFT", --Moved Frame Anchor
  GuildMicroButton, --Anchor
  "RIGHT", --Parent Frame Anchor
  -1, --X Position Offset
  0 --Y Position Offset
)

CollectionsMicroButton:SetParent(LFDMicroButton)
CollectionsMicroButton:ClearAllPoints()
CollectionsMicroButton:SetPoint(
  "LEFT", --Moved Frame Anchor
  LFDMicroButton, --Anchor
  "RIGHT", --Parent Frame Anchor
  -1, --X Position Offset
  0 --Y Position Offset
)

EJMicroButton:SetParent(CollectionsMicroButton)
EJMicroButton:ClearAllPoints()
EJMicroButton:SetPoint(
  "LEFT", --Moved Frame Anchor
  CollectionsMicroButton, --Anchor
  "RIGHT", --Parent Frame Anchor
  -1, --X Position Offset
  0 --Y Position Offset
)

MainMenuMicroButton:SetParent(EJMicroButton)
MainMenuMicroButton:ClearAllPoints()
MainMenuMicroButton:SetPoint(
  "LEFT", --Moved Frame Anchor
  EJMicroButton, --Anchor
  "RIGHT", --Parent Frame Anchor
  -1, --X Position Offset
  0 --Y Position Offset
)

MicroBar:SetScale(.85)




----------------
--FRAME HIDING--
----------------


MainMenuBarLeftEndCap:Hide()
MainMenuBarRightEndCap:Hide()
--MainMenuBarArtFrame:Hide()
StoreMicroButton:ClearAllPoints()
StoreMicroButton:Hide()