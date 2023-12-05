local Values = require(workspace.Values)

return (function(Noisai)

	function Noisai:Jumpscare()
        local val = Values:Fetch("jumpscare")
		val.Value = true
			
		self.Jumpscare:Fire()
	end

end)
