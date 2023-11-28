-- workspace setup
--[[

workspace [
    Noisai: module { ... }

    Character: folder [
        Sprites: folder [
            First: part { 
                __sprite: decal/texture 
            }

            Second: part { 
                __sprite: decal/texture 
            }

            Last: part { 
                __sprite: decal/texture 
            }
        ]
    ]
]

]]


-- code example
--[[

local Noisai = require('workspace.Noisai');
local data = workspace.Character


Noisai.new(10, data, function(sprites)
    return {
        { 1, sprites.First },
        { 2, sprites.Second },
        { 3, sprites.Last }
    }
end);

]]


local Signal = require(script.Parent.Parent.Signal);


return (function(Noisai)
        
    function Noisai.new(Level: number, Data, callback)
        local self = setmetatable( {

            --[[ data ]]
            Level = Level,
            Data = Data
            Path = "placeholder",

            At = 1

            --[[ signals ]]
            Moving = Signal.new(),
            Stuck = Signal.new(),
            Active = Signal.new()
            
        }, Bot )
            
        return self;
    end
        
end)
