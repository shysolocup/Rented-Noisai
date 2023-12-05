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
					local diff
					local e
					
					if (lure.Room > self.At) then
						diff = lure.Room-self.At
						e = 1
					elseif (lure.Room < self.At) then
						diff = self.At-lure.Room
						e = 2
					elseif (lure.Room == self.At) then
						diff = 0
						e = 3
					end
					
					if (diff == 0) then
						self:Next()
						
					else
						if (diff <= 2) then
							self:To(lure.Room)
						end
					end
				else
					self:Next()	
				end
			else
				self.Stuck:Fire(origin);
			end
			
			previous = watching
			wait( math.random(21-self.Level) )
		end
	end


end)
