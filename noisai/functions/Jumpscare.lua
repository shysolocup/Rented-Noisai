local Values = require(workspace.Values)

return (function(Noisai)

	function Noisai:Jumpscare()
		local val = Values:Fetch("jumpscare")
		val.Value = true

		self.Jumpscaring:Fire()
		self.JumpscareSFX:Play()
	end

end)
