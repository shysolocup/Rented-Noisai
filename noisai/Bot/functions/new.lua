local Signal = require(script.Parent.Parent.Parent.Signal);


return (function(Bot)
        
    function Bot.new(Level: number, Vision)
        local self = setmetatable( {

            --[[ data ]]
            Level = Level,
            Vision = Vision,
            Path = "placeholder",

            --[[ signals ]]
            Moving = Signal.new(),
            Stuck = Signal.new(),
            Active = Signal.new()
            
        }, Bot )
            
        return self;
    end
        
end)
