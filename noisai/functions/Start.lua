local Values = require(workspace.Values)

return (function(Noisai)

	function Noisai:Start()
		self.Active = true
		
		while self.Active do
			local origin = self.At
			local noisePeak = Values:Fetch("noisePeak").Value;

			local rand = math.random(1, 20);
			local chance = rand - ( noisePeak/10 )
			local move = chance <= self.Level;
			
			print(move)
			
			if move then
				self:Next()
			else
				self.Stuck:Fire(origin);
			end
			
			
			wait( math.random(21-self.Level) )
		end
	end


end)
