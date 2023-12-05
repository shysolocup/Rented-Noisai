return (function(Noisai)

	function Noisai:PlayVoice()
		self.Voicelines[ math.random(1, #self.Voicelines) ]:Play()
	end

end)
