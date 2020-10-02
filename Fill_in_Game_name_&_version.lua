-- [ENABLE]
-- {$lua}
if syntaxcheck then return end

local _author = ''
local _type   = 'aobscan'
local _msg    = 'Author: '.._author..'\nError : '.._type..' '

local Author01 = {[[
// Script_name
aobscanmodule
registersymbol
]],[[
// Script_name
aobscanregion
registersymbol
]]}

for i = 1, #Author01 do
  if autoAssemble(Author01[i]) == false then print(_msg..Author01[i]) end
end

local _author = ''
local _type   = 'aobscan'
local _msg    = 'Author: '.._author..'\nError : '.._type..' '

local Author02 = {[[
// Script_name
aobscanmodule
registersymbol
]],[[
// Script_name
aobscanregion
registersymbol
]]}

for i = 1, #Author02 do
  if autoAssemble(Author02[i]) == false then print(_msg..Author02[i]) end
end
-- {$asm}
-- [DISABLE]
-- unregistersymbol
