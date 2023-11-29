local Noisai = {}
Noisai.__index = Noisai

local functions = script.functions

for _, f in pairs(functions:GetChildren()) do
	f(Noisai)
end

return Noisai
