function CameraSmoothMove()

    local target  = Camera.target

    local targetX = target.x
    local targetY = target.y

    local prevX = target.x
    local prevY = target.y

    local cameraX = Camera.position.x
    local cameraY = Camera.position.y

    local moveX = 0
    local moveY = 0

    local toX = 0
    local toY = 0

    local LERP = 7

    local isMoving = false

    local MAX_SPEED = 16

    Client.onTick.Add(function(deltaTime)
        targetX = target.x
        targetY = target.y

        if math.abs(targetX - prevX) < 1 and math.abs(targetY + prevY) < 1 then
            isMoving = true
        end

        cameraX = Camera.position.x
        cameraY = Camera.position.y * -1

        moveX = (targetX - prevX) * LERP * deltaTime
        moveY = (targetY - prevY) * LERP * deltaTime

        toX = prevX + moveX
        toY = -prevY - moveY

        Camera.position = Point(toX, toY)

        prevX = toX
        prevY = -toY

    end, 2)

end

Client.RunLater(CameraSmoothMove, 2)
