local function digOnce()
    while turtle.detect() do
        turtle.dig()
    end
    turtle.forward()
    while turtle.detectUp() do
        turtle.digUp()
    end
    if(turtle.detectDown() then
        turtle.digDown()
    end
    
end

local function digArm (length)
    for i = 0, length, 1 do
        digOnce()        
    end
    turtle.turnLeft()
    turtle.turnLeft()
    for i = 0, length, 1 do
        turtle.forward()
    end
end
local running = true
while running do
    digOnce()
    digOnce()
    digOnce()
    digOnce()
    turtle.turnLeft()
    digArm(5)
    digArm(5)
    turtle.turnRight()
end

