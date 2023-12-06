return (function(Noisai)

	function Noisai:To(to)
		local origin = self.At

		if not to then to = self.At + 1 end;

		self.Moving:Fire(origin, to);

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

		cur.SFX:Play()

		if (self.At == #self.Path) then
			self:Jumpscare()
		else
			self.At = to
		end
	end


end)
