local Bot = {}
Bot.__index = Bot

local functions = script.Parent.functions

for _, f in pairs(functions:getChildren()) do
  f(Bot)
end

return Bot
