--Graphical Processing Unit
GPU = {}
GPU.Terminal = 1   --1 = Minimized , 2 = maximize , 3= cancel maximize loop , 4 = shrink window , 5 = idle
GPU.Fullscreen = false 
Menu = love.graphics.newImage("menu.png")
function love.draw()
if EMU.menu == true then 
    love.graphics.draw(Menu,0,100,0,1,1,1)
	end
end

function GPU.tick()   --what GPU Updates
if GPU.Terminal == 1 and GPU.Fullscreen == false  then
love.window.minimize( )
elseif GPU.Terminal == 2 and GPU.Fullscreen == false then 
love.window.maximize( )
love.window.setFullscreen(false, "exclusive")
GPU.Fullscreen = true
end 
end

