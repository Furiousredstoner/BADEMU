--Central Processing Unit
CPU = {}
CPU.bits = 0
CPU.PC = 0
CPU.clock = os.clock()
CPU.tickSpeed = 1
function CPU.tick() --what CPU Updates
if os.clock() > CPU.clock + CPU.tickSpeed then
CPU.PC = CPU.PC + 1
CPU.clock = os.clock()
end
if CPU.PC > CPU.bits then
CPU.PC = 0
end
end

