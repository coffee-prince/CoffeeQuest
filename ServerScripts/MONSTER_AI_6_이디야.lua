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
            ai.MoveToPosition(target.x, enemy.y)

            local skill = math.random(16, 18)

            ai.UseSkill(skill)

            Server.RunLater(function()
                local r_skill = math.random(16, 18)
                ai.UseSkill(r_skill)
            end, 1)
        end

        if ai.GetTargetUnit() == nil then
            return
        end

    end

    if (event == 1) then

    end

end

Server.SetMonsterAI(6, firstAttack)
