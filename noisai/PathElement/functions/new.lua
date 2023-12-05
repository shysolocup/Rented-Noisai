return (function(PathElement)

	function PathElement.new(Part)

		local self = setmetatable( {

			Part = Part

		}, PathElement )

		return self;
	end

end)
