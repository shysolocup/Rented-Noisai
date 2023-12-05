-- workspace setup
--[[

workspace [
    Noisai: module { ... }

	char: folder [
	    Character: folder [
	        ns_level: number,
	        ns_jumpscare: sound,
			ns_voicelines: folder [
				thing: sound
				abc: sound
			]
	        ns_path: folder [
	            First: part { 
	                ns_index: number
	                ns_room: number
	                ns_footsteps: sound
	                Sprite: decal/texture
	            }
	
	            Second: part { 
	                ns_index: number
	                ns_room: number
	                ns_footsteps: sound
	                Sprite: decal/texture
	            }
	
	            Last: part { 
	                ns_index: number
	                ns_room: number
	                ns_footsteps: sound
	                Sprite: decal/texture
	            }
	        ]
		]
    ]
]

]]


-- code example
--[[

local Noisai = require(workspace.Noisai);
local char = workspace.chars.Character

Noisai.new(char);

]]


local Signal = require(script.Parent.Parent.Signal);
local PathElement = require(script.Parent.Parent.PathElement)


return (function(Noisai)

	function Noisai.new(Character)
		
		local self = setmetatable( {

			Character = Character,
			At = 1,

			--[[ data ]]
			Level = Character.ns_level.Value,
			Path = {},
			
			
			--[[ sound effects ]]
			Jumpscare = Character.ns_jumpscare,
			Voicelines = {}

			--[[ signals ]]
			Moving = Signal.new(),
			Stuck = Signal.new(),
			Active = Signal.new(),
			Watched = Signal.new(),
			Lonely = Signal.new(),
			Jumpscare = Signal.new

		}, Noisai )
		
		
		local Path = Character.ns_path
		
		
		for _, p in pairs(Path:GetChildren()) do
			self.Path[p.ns_index.Value] = PathElement.new(p)
		end


		for i, vl in ipairs(Character.ns_voicelines:GetChildren()) do
			self.Voicelines[i] = vl
		end
		

		return self;
	end

end)
