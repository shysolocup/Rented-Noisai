local Values = require(workspace.Values)

return (function(Noisai)

	function Noisai:Jumpscare()
        local jumpscare = Values:Fetch("jumpscare")
		jumpscare.Value = true
			
		self.Jumpscare:Fire()
	end

end)
