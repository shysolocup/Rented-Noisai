local Values = require(workspace.Values)

return (function(Noisai)

	function Noisai:Start()
		self.Active = true

		while self.Active do
			local origin = self.At
			local previous

			local lure = {
				Active = Values:Fetch("lureActive"),
				Room = Values:Fetch("lureRoom")
			}

			local noisePeak = Values:Fetch("noisePeak").Value;
			local current = Values:Fetch("currentCamera").Value;

			local rand = math.random(1, 20);
			local chance = rand - ( noisePeak/10 )
			local move = chance <= self.Level;


			local watching; if current == self:Cur().Room then watching = true else watching = false end


			if watching and not previous then
				self.Watched:Fire(current, origin);
			elseif previous and not watching or not previous and not watching then
				self.Lonely:Fire(current, origin);
			end


			if move and not watching then
				if (math.random(1, 10) < 1) then
					pcall(function()
						self:PlayVoice()
					end)
				end

				if (lure.Active) then
					-- lure mechanics are not in yet
				else
					self:Next()	
				end
			else
				self.Stuck:Fire(origin);
			end

			previous = watching
			wait( 20/self.Level )
		end
	end


end)
