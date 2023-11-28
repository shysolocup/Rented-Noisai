-- workspace setup
--[[

workspace [
    Noisai: module { ... }

    Character: folder [
        ns_level: number
        ns_path: folder [
            First: part { 
                ns_index: number
                ns_sound: sound
                ns_soundid: string
                ns_sprite: decal/texture 
            }

            Second: part { 
                ns_index: number
                ns_sound: sound
                ns_soundid: string
                ns_sprite: decal/texture 
            }

            Last: part { 
                 ns_index: number
                 ns_sound: sound
                 ns_soundid: string
                 ns_sprite: decal/texture 
            }
        ]
    ]
]

]]


-- code example
--[[

local Noisai = require('workspace.Noisai');
local char = workspace.Character

Noisai.new(char);

]]


local Signal = require(script.Parent.Parent.Signal);


return (function(Noisai)
        
    function Noisai.new(Character)
        local self = setmetatable( {

            Character = Character,

            --[[ data ]]
            Level = Character.ns_level.Value,
            Path = ipairs(Character.ns_path:GetChildren()),

            At = 1

            --[[ signals ]]
            Moving = Signal.new(),
            Stuck = Signal.new(),
            Active = Signal.new()
            
        }, Bot )
            
        return self;
    end
        
end)
