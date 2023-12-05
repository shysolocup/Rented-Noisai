local Values = require(workspace.Values)

return (function(Noisai)

	function Noisai:To(to)
		local origin = self.At
		local noisePeak = Values:Fetch("noisePeak").Value;

		local rand = math.random(1, 20);
		local chance = rand - ( noisePeak/10 )
		local move = chance <= self.Level;

		if not to then to = self.At + 1 end;

		if move then

			local cur = self:Cur();
			local nxt = self:Get(to);
			
			for _, s in pairs(cur:Sprites()) do
				s.Transparency = 1
			end
			
			if nxt then
				for _, s in pairs(nxt:Sprites()) do
					s.Transparency = 0
				end
			end

			-- nxt:PlaySFX();

			self.At = to
			self.Moving:Fire(origin, to);
		else
			self.Stuck:Fire(origin, to);
		end
	end


end)
