local Noisai = {}
Noisai.__index = Noisai

local functions = script.functions

for _, f in ipairs(functions:GetChildren()) do
	require(f)(Noisai)
end

return Noisai
