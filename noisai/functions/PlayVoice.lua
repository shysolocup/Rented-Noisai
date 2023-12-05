return (function(Noisai)

	function Noisai:PlayVoice(v)
		if not v then v = math.random(1, #self.Voicelines) end
		self.Voicelines[v]:Play()
	end

end)
