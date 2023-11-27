local Path = {}
Path.__index = Path

local functions = script.Parent.functions

for _, f in pairs(functions:GetChildren()) do
  f(Path)
end

return Path
