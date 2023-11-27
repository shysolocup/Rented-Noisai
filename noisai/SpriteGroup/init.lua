local SpriteGroup = {}
SpriteGroup.__index = SpriteGroup

local functions = script.Parent.functions

for _, f in pairs(functions:getChildren()) do
  f(SpriteGroup)
end

return SpriteGroup
