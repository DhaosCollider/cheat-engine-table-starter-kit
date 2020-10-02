-- [ENABLE]
-- {$lua}
if syntaxcheck then return end

local _author = ''
local _type   = 'aobscan'
local _msg    = 'Author: '.._author..'\nError : '.._type..' '

local Author = {[[
// Script_name
AOB
registersymbol
]],[[
// Script_name
AOB
registersymbol
]]}

for i = 1, #Author do
  if autoAssemble(Author[i]) == false then print(_msg..Author[i]) end
end
-- {$asm}
-- [DISABLE]
