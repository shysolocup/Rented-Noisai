local Values = require(workspace.Values)

return (function(Noisai)

	function Noisai:Jumpscare()
        local jumpscare = Values:Fetch("jumpscare")
		self.Jumpscare:Fire()
		
		jumpscare.Value = true
	end

end)
