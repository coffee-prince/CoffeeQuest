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

			for i = 0, 10 do
				enemy.MakeKnockback(-120, 0.1)
				ai.UseSkill(37)
			end




		end

        if ai.GetTargetUnit() == nil then
            return
        end

    end

    if (event == 1) then

    end

end

Server.SetMonsterAI(72, firstAttack)
