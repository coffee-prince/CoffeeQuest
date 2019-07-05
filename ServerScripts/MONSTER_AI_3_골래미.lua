local clock = os.clock
function sleep(n)
  local t0 = clock()
  while clock() - t0 <= n do end
end

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


			local target = ai.GetTargetUnit()


            local skill = math.random(19, 20)

            if skill  == 19 then
                ai.SetFollowTarget(true)
                ai.UseSkill(skill)
            else
                ai.SetFollowTarget(false)
                ai.UseSkill(skill, Point(0, 1))
                ai.UseSkill(skill, Point(0, -1))
                ai.UseSkill(skill, Point(1, 0))
                ai.UseSkill(skill, Point(-1, -0))

                Server.RunLater(function()
                    ai.UseSkill(skill, Point(1, 1))
                    ai.UseSkill(skill, Point(1, -1))
                    ai.UseSkill(skill, Point(-1, 1))
                    ai.UseSkill(skill, Point(-1, -1))
                    ai.SetFollowTarget(true)
                end, 1)

            end



        end

        if ai.GetTargetUnit() == nil then
            return
        end

    end

    if (event == 1) then

    end

end

Server.SetMonsterAI(3, firstAttack)
