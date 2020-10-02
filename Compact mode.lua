-- {$lua}
if syntaxcheck then return end
--[[
Credit:
  mgr.inz.Player (https://forum.cheatengine.org/viewtopic.php?t=570055)

Thanks for the info.
]]
local Compact = {}

Compact[1], Compact[2], Compact[3] = 'Compact View Mode', 'Full View Mode', 'yes'

function Compact.addMenu()
  if compactManualReadyExists then return end
  local parent = getMainForm().Menu.Items
  compactMenuItem = createMenuItem(parent)
  parent.add(compactMenuItem)
  compactMenuItem.Caption  = Compact[1]
  compactManualReadyExists = Compact[3]
  compactMenuItem.OnClick  = Compact.cycleFull
end

function Compact.cycleFull()
  local state = not (compactMenuItem.Caption == Compact[1])
  compactMenuItem.Caption = state and Compact[1] or Compact[2]
  getMainForm().Splitter1.Visible = state
  getMainForm().Panel4.Visible    = state
  getMainForm().Panel5.Visible    = state
end

-- [ENABLE]

return Compact.addMenu()

-- [DISABLE]
