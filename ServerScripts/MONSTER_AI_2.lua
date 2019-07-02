
function firstAttack(enemy,ai,event,data)
    if (event == 0) then -- 2초마다 실행되는 이벤트

        --맵에 플레이어가 하나도 없으면 null 세팅
        if enemy.field.playerCount <=0 then
            ai.SetTargetUnit(nil)

        -- 타겟이 없거나, 기존 타겟이던 unit이 맵을 나갔거나, x또는y값 차이의 절댓값이 300을 넘어서면
        -- 타겟을 nil로 초기화하고 200 범위 내에서 타겟을 설정
        elseif (ai.GetTargetUnit()==nil)
               or (enemy.field.GetUnit(ai.GetTargetUnitID())==nil)
               or (math.abs(enemy.x-enemy.field.GetUnit(ai.GetTargetUnitID()).x) >= 300)
               or (math.abs(enemy.y-enemy.field.GetUnit(ai.GetTargetUnitID()).y) >= 300) then

            ai.SetFollowTarget(false) --타겟이 사라졌으면 추적을 비활성화
            ai.SetTargetUnit(nil)
            ai.SetNearTarget(0,400)
        end


        if ai.GetTargetUnit() ~= nil then

			target = ai.GetTargetUnit()

			d = ai.Distance(enemy.x, enemy.y, target.x, target.y)

			if d > 32 * 5 then
				ai.MoveToPosition(target.x + math.random(-32 * 5, 32 * 5), target.y + math.random(-32 * 5, 32 * 5))
			end


            ai.UseSkill(5)

        end

        --타겟이 없을경우 예외처리
        if ai.GetTargetUnit() == nil then
            return
        end

    end

    if (event == 1) then -- 몬스터가 공격을 받을때마다 실행되는 이벤트
        --공격한 유닛이 없을경우 예외처리

    end

end

Server.SetMonsterAI(2, firstAttack) -- 1번몬스터에게 firstAttack 적용
