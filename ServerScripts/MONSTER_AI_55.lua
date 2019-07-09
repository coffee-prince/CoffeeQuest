function firstAttack(enemy,ai,event,data)
    if (event == 0) then -- 2초마다 실행되는 이벤트

        enemy.MakeKnockback(32 * 5, 0.1)

    end

    if (event == 1) then -- 몬스터가 공격을 받을때마다 실행되는 이벤트
        --공격한 유닛이 없을경우 예외처리

    end

end

Server.SetMonsterAI(55, firstAttack) -- 1번몬스터에게 firstAttack 적용
