local function digOnce()
    while turtle.detect() do
        turtle.dig()
    end
    turtle.forward()
    if turtle.detectUp() then
        turtle.digUp()
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

