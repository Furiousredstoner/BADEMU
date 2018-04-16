function love.load()
icon = love.image.newImageData("icon.png")
love.window.setIcon(icon)
Components = {"./Components/EMU","./Components/GPU","./Components/ROM","./Components/CPU","./Components/RAM"}
for i=1,#Components do 
    require(Components[i])
end
end
function love.update(dt)
EMU.tick()
GPU.tick()
CPU.tick()
ROM.tick()
RAM.tick()
print(CPU.PC)
end
