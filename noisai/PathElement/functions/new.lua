return (function(PathElement)

	function PathElement.new(Part)

		local self = setmetatable( {

			Part = Part,
			Index = Part.ns_index,
			Room = Part.ns_room

		}, PathElement )

		return self;
	end

end)
