return (function(PathElement)

	function PathElement:Sprites()
		local a = {}

		for _, child in pairs(self.Part:GetChildren()) do
			if child.ClassName == "Decal" or child.ClassName == "Texture" then a[#a+1] = child end
		end

		return a
	end


end)
