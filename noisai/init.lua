local Noisai = {}
Noisai.__index = Bot

local functions = script.Parent.functions

for _, f in pairs(functions:GetChildren()) do
  f(Noisai)
end

return Noisai
