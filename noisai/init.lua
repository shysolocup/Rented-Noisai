local Noisai = {}
Noisai.__index = Noisai

local functions = script.Parent.functions

for _, f in pairs(functions:getChildren()) do
  f(Noisai)
end

return Noisai
