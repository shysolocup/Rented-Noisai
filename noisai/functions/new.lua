local Signal = require(script.Parent.Parent.Parent.Signal);


return (function(Noisai)
        
    function Noisai.new(Level: number, Vision)
        local self = setmetatable( {

            --[[ data ]]
            Level = Level,
            Vision = Vision,
            Path = "placeholder",

            At = 1

            --[[ signals ]]
            Moving = Signal.new(),
            Stuck = Signal.new(),
            Active = Signal.new()
            
        }, Bot )
            
        return self;
    end
        
end)
