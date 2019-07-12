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

			local r = math.random(26, 46)

			local t = math.atan2(x - _x, y - _y)


			for i = 1, 10 do
				ai.UseSkill(32, Point(x *  math.cos(t + math.rad(i *  math.random(26, 46))), y * math.sin(t + math.rad(i *  math.random(26, 46))) ))
			end
			ai.UseSkill(33)

			Server.RunLater(function()
				for i = 1, 5 do
					ai.UseSkill(32, Point(x *  math.cos(t + math.rad(i *  math.random(26, 46))), y * math.sin(t + math.rad(i *  math.random(26, 46))) ))
				end
                enemy.MakeKnockback(-200, 0.1)
            end, 1)
--			ai.UseSkill(21)

		end

        if ai.GetTargetUnit() == nil then
            return
        end

    end

    if (event == 1) then

    end

end

Server.SetMonsterAI(70, firstAttack)
