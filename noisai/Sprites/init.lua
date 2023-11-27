local Sprites = {}
Sprites.__index = Sprites

local functions = script.Parent.functions

for _, f in pairs(functions:getChildren()) do
  f(Sprites)
end

return Sprites
