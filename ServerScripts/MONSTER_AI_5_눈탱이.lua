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
            ai.SetNearTarget(0,400)
        end


		if ai.GetTargetUnit() ~= nil then

			ai.SetFollowTarget(true)

			local skill = math.random(23, 25)
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
