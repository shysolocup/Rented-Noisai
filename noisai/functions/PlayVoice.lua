return (function(Noisai)

	function Noisai:PlayVoice(i)
		if not i then i = math.random(1, #self.Voicelines) end
		self.Voicelines[i]:Play()
	end

end)
