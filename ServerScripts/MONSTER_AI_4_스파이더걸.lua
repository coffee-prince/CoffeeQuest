a=0

function firstAttack(enemy,ai,event,data)
    if (event == 0) then

        if enemy.field.playerCount <=0 then

            ai.SetTargetUnit(nil)

        elseif (ai.GetTargetUnit()==nil) then

            ai.SetNearTarget(0,400)

        end

		if a <= 1 then
			if ai.GetTargetUnit() ~= nil then

				ai.SetFollowTarget(true)
				ai.UseSkill(21)
				a=2
			end

		elseif a > 1 then
			if ai.GetTargetUnit() ~= nil then

				ai.UseSkill(22)
				a=1
			end
		end
--]]
--[[
		if ai.GetTargetUnit() ~= nil then

				ai.UseSkill(2)

		end
--]]
        if ai.GetTargetUnit() == nil then
            return
        end

    end

    if (event == 1) then

    end

end

Server.SetMonsterAI(4, firstAttack)
