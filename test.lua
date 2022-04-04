local armLength = 10
local mineLength = 25
local currentMineLength = 0
local function digOnce()
    while turtle.detect() do
        turtle.dig()
    end
    turtle.forward()
    while turtle.detectUp() do
        turtle.digUp()
    end
    if turtle.detectDown() then
        turtle.digDown()
    end

end

local function digArm(length)
    for i = 0, length, 1 do
        digOnce()
    end
    turtle.turnLeft()
    turtle.turnLeft()
    for i = 0, length, 1 do
        turtle.forward()
    end
end
local function main()
    while currentMineLength < mineLength do
        for i = 1, 4, 1 do
            digOnce()
        end
        turtle.turnLeft()
        digArm(armLength)
        digArm(armLength)
        turtle.turnRight()
        currentMineLength = currentMineLength + 1
    end
end

main()

