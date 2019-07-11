function firstAttack(enemy,ai,event,data)
    if (event == 0) then --


        if enemy.field.playerCount <=0 then
            ai.SetTargetUnit(nil)

        elseif (ai.GetTargetUnit()==nil)
               or (enemy.field.GetUnit(ai.GetTargetUnitID())==nil)
               or (math.abs(enemy.x-enemy.field.GetUnit(ai.GetTargetUnitID()).x) >= 300)
               or (math.abs(enemy.y-enemy.field.GetUnit(ai.GetTargetUnitID()).y) >= 300) then

            ai.SetFollowTarget(false)
            ai.SetTargetUnit(nil)
            ai.SetNearTarget(0,1400)
        end


		if ai.GetTargetUnit() ~= nil then
			local target = ai.GetTargetUnit()
			local x = enemy.x
			local y = enemy.y
			local _x = target.x - enemy.x
			local _y = target.y - enemy.y

			local d = ai.DistanceSquard(x, _x, y, _y)

			local skill = math.random(23, 25)

			ai.SetFollowTarget(false)

			if skill == 25 then
				ai.UseSkill(25)
				target.field.SpawnEnemy(50, x+1, y)
				target.field.SpawnEnemy(50, x-1, y)
				target.field.SpawnEnemy(50, x, y+1)
				target.field.SpawnEnemy(50, x, y-1)
				return
			end

			if skill == 23 then
				for i = 1, 10 do
					ai.UseSkill(skill, Point( x * math.cos(math.rad(i *36)), y * math.sin(math.rad(i * 36)) ))
				end



				return
			end

			if skill == 24 then
				ai.SetFollowTarget(true)
			end



			ai.UseSkill(skill)

		end

        if ai.GetTargetUnit() == nil then
            return
        end

    end

    if (event == 1) then

    end

end

Server.SetMonsterAI(5, firstAttack)
