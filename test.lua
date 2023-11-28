local noiseMax = 100
local level = 10


for i = 0, 9 do i = i + 1
    local rand = math.random(1, 20);
    local chance = rand - ( noiseMax/10 )
    
    local move = chance <= level;
    
    print(move);
end
