--[[

local Noisai = require(workspace.Noisai)
local sprites = workspace.sprites


local path = Noisai.Path.new({
    // { Name: string, Index: number, Part: part, Sprite: decal/texture }

    { "Start", 1, sprites.start, sprites.start.Sprite },
    { "Mid", 2, sprites.mid, sprites.mid.Sprite },
    { "End", 3, sprites.end, sprites.end.Sprite }
});


]]

local PathElement = require(script.Parent.Parent.Parent.PathElement)


return (function(Path) function Path.new(obj)
            
    local self = setmetatable( {}, Path )

    for _, elem in pairs(obj) do
        local pe = PathElement.new(elem);
        self[pe.Index] = pe;
    end
            
    return self;
            
end end)
