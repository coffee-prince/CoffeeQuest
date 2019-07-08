function firstAttack(enemy,ai,event,data)
    if (event == 0) then

        if enemy.field.playerCount <=0 then

            ai.SetTargetUnit(nil)

        elseif (ai.GetTargetUnit()==nil) then

            ai.SetNearTarget(0,400)

        end

		if ai.GetTargetUnit() ~= nil then

			skill = math.random(26, 28)

			if skill == 28 then skill = 27 end

			local target = ai.GetTargetUnit()

			local _x = target.x - enemy.x
			local _y = target.y - enemy.y

			if skill == 26 then
				ai.SetFollowTarget(true)

				ai.UseSkill(26)
				return
			end




			ai.SetFollowTarget(false)
				ai.UseSkill(27)

				ai.SetFollowTarget(true)
			enemy.MakeKnockback(-200, 0.4)
			ai.SetFollowTarget(false)
			Server.RunLater(function()

				local x = enemy.x
				local y = enemy.y
				for i = 1,12 do
					ai.UseSkill(28, Point(x * math.cos(math.rad(i * 30)), y * math.sin(math.rad(i * 30)) ))
				end

			end, 1)

			--ai.UseSkill(28)

		end





        if ai.GetTargetUnit() == nil then
            return
        end

    end

    if (event == 1) then

    end

end

Server.SetMonsterAI(2, firstAttack)
