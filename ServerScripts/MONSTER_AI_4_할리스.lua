a=0
function firstAttack(enemy,ai,event,data)

    if (event == 0) then

        if enemy.field.playerCount <=0 then

            ai.SetTargetUnit(nil)

        elseif (ai.GetTargetUnit()==nil) then

            ai.SetNearTarget(0,1200)

        end

		if ai.GetTargetUnit() ~= nil then
--[[
			local target = ai.GetTargetUnit()
			local x = enemy.x
			local y = enemy.y
			local _x = target.x - enemy.x
			local _y = target.y - enemy.y

			local toX =  x + math.random(-32 * 5, 32 * 5)
			local toY =  y + math.random(-32 * 5, 32 * 5)

			ai.MoveToPosition(toX, toY)

			ai.SetFollowTarget(false)

			local r = math.random(26, 46)
			for i = 1, 10 do
				ai.UseSkill(22, Point(x * math.cos(math.rad(i * r)), y * math.sin(math.rad(i * r)) ))
			end


			local ex = math.random(1, 3)

			for i = 1, ex do
				target.field.SpawnEnemy(45, math.random(32 * 2, 32 * 15), math.random(-32 * 7, -32 * 16))
			end
			target.field.SpawnEnemy(45,x,y)
]]
			ai.SetFollowTarget(true)
			local target = ai.GetTargetUnit()
			local x = enemy.x
			local y = enemy.y
			local _x = target.x
			local _y = target.y

			local r = math.random(26, 46)

			local t = math.atan2(x - _x, y - _y)


			for i = 1, math.random(6, 12) do
				ai.UseSkill(22, Point(x *  math.cos(t + math.rad(i *  math.random(26, 46))), y * math.sin(t + math.rad(i *  math.random(26, 46))) ))
			end

			ai.UseSkill(21)
		end

        if ai.GetTargetUnit() == nil then
            return
        end

    end

    if (event == 1) then

    end

end

Server.SetMonsterAI(4, firstAttack)
