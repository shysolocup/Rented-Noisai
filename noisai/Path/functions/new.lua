--[[

local Noisai = require(workspace.Noisai)
local dir = workspace.sprites


local path = Noisai.Path.new(dir, function(sprites) 
    return {
        { sprites.start, 1 },
        { sprites.end, 2 }
    }
end);


]]

return (function(Path) function Path.new(spritesDirectory, callback)
    
    local self = setmetatable( {
            
    }, Path )

        
    return self;
            
end end)
