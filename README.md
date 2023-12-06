# Rented Noisai
this repo contains and explains the code behind the AI from the Roblox game Rented

```lua
local Noisai = require(workspace.Noisai);
local char = workspace.chars.Character


local bot = Noisai.new(char);


bot.Moving:Connect(function(origin, to)
    print("successfully moved from "..origin.." to "..to)
end)


bot.Stuck:Connect(function(origin, to)
    print("got stuck trying to move from "..origin.." to "..to)
end)


bot.Watched:Connect(function(cam)
    print("watched on camera "..cam)
end)


bot.Jumpscaring:Connect(function()
  print("jumpscared player")
end)


bot:Start()
```
