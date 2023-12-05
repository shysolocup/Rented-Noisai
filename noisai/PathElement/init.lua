local PathElement = {}
PathElement.__index = PathElement

local functions = script.functions

for _, f in ipairs(functions:GetChildren()) do
	require(f)(PathElement)
end

return PathElement
