return (function(Path)
        
    function Path.new(Sprites)
            
        local self = setmetatable( {
                    
            Sprites = pairs(Sprites:GetChildren())
                    
        }, Path )

            
        return self;
    end
        
end)
