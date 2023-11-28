return (function(Bot)
        
    function Bot:Move(to=nil)
        if not to then to = self.At + 1 end;

        local cur = self:Cur();
        local next = self:Get(to);
            
        cur.Visul.Transparency = 1
        next.Visul.Transparency = 0

        next:PlaySFX();
            
        self.At = to
        self.Moving:Fire(to)
    end
    
        
end)
