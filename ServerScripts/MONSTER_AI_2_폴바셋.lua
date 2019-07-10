function firstAttack(enemy,ai,event,data)

	if(event == AI_INIT) then
		ai.customData.prev = 0
		ai.customData.count = 0
    end

    if (event == 0) then
        if enemy.field.playerCount <=0 then
            ai.SetTargetUnit(nil)
        elseif (ai.GetTargetUnit()==nil) then
            ai.SetNearTarget(0,400)
        end

		if ai.GetTargetUnit() ~= nil then
			local skillID = math.random(26,27)


			if skillID == ai.customData.prev then
				ai.customData.count = ai.customData.count + 1
			end

			if ai.customData.count == 3 then
				if skillID == 26 then skillID = 27 else skillID = 26 end
				ai.customData.count = 0
			end

			ai.customData.prev = skillID
			ai.UseSkill(skillID)
			enemy.MakeKnockback(-200, 0.4)
		end


        if ai.GetTargetUnit() == nil then
            return
        end

    end

    if (event == 1) then

    end

end

Server.SetMonsterAI(2, firstAttack)
