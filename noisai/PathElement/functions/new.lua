--[[

local Noisai = require(workspace.Noisai)
local sprites = workspace.sprites


local pathElem = Noisai.PathElement.new({ "Start", 1, sprites.start, sprites.start.Sprite });


]]


return (function(PathElement) function PathElement.new(obj)
            
    local self = setmetatable( {
          
          Name = obj[0],
          Index = obj[1],
          Part = obj[2],
          Sprite = obj[3]
          
    }, PathElement )
            
    return self;
            
end end)
