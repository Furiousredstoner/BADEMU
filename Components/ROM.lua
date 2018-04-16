ROM = {} 
ROM.Data = {}
function ROM.tick()    --what ROM Updates
CPU.bits = #ROM.Data
RROM = ROM.Data[CPU.PC]
if RROM == nil then
RROM = 0
end 
end

