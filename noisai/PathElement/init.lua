local PathElement = {}
PathElement.__index = PathElement

local functions = script.Parent.functions

for _, f in pairs(functions:GetChildren()) do
  f(Path)
end

return Path
