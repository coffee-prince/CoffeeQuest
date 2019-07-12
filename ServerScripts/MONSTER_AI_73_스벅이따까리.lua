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
			ai.SetFollowTarget(true)
			local x = enemy.x
			local y = enemy.y
			local _x = target.x
			local _y = target.y

			local r = 30
			for i = 1, math.random(1, 12) do
				ai.UseSkill(38, Point(x * math.cos(math.rad(i * r)), y * math.sin(math.rad(i * r)) ))
			end

			ai.UseSkill(38)




		end

        if ai.GetTargetUnit() == nil then
            return
        end

    end

    if (event == 1) then

    end

end

Server.SetMonsterAI(73, firstAttack)
