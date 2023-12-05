# Rented Noisai
this repo contains and explains the code behind the AI from the Roblox game Rented

```lua
local Noisai = require(workspace.Noisai);
local char = workspace.chars.Character


local bot = Noisai.new(char);


bot.Moving:Connect(function(origin, cam)
    print("successfully moved from "..origin.." to "..cam)
end)


bot.Stuck:Connect(function(origin, cam)
    print("got stuck trying to move from "..origin.." to "..cam)
end)


bot.Watched:Connect(function(cam)
    print("watched on camera "..cam)
end)


bot.Jumpscare:Connect(function()
  print("jumpscared player")
end)


bot:Start()
```
