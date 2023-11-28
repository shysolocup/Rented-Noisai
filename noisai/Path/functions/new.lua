--[[

local Noisai = require(workspace.Noisai)
local sprites = workspace.sprites


local path = Noisai.Path.new({
    // { Name: string, Index: number, Part: part, Sprite: decal/texture }

    { "Start", 1, sprites.start },
    { "Mid", 2, sprites.mid },
    { "End", 3, sprites.end }
});


]]


return (function(Path) function Path.new(obj)
            
    local self = setmetatable( {}, Path )

    for _, elem in pairs(obj) do
        self[ obj[2] ] = obj[3];
    end
            
    return self;
            
end end)
