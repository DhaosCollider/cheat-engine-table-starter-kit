-- {$lua}
if syntaxcheck then return end

local reqCEVersion = 7.1
local msgVersion   = 'You using Cheat Engine '..getCEVersion()..'.\nRequired that you use Cheat Engine '..reqCEVersion..' or later.'
local msgProcess   = 'Select a process to open.'
local compactMode  = 'Compact mode'
local gameNameVer  = 'Fill_in_Game_name_&_version'

-- [ENABLE]

if getCEVersion == nil or getCEVersion() < reqCEVersion then
  error(messageDialog(msgVersion, 2, 2))
elseif process == nil then
  error(messageDialog(msgProcess, 2, 2))
else
  getAddressList().getMemoryRecordByDescription(compactMode).Active = true
  getAddressList().getMemoryRecordByDescription(gameNameVer).Active = true
  memrec.Description, memrec.Color = 'Enable << '..gameNameVer, 0x00808000
end

-- [DISABLE]

getAddressList().getMemoryRecordByDescription(gameNameVer).Active = false
memrec.Description, memrec.Color = 'Enable << void', 0x000000FF
