--Server.SetMonsterAI(0, function(enemy, ai, event, data)
	--enemy.say(1)
--end)
function REFRESH_STAT()
	local DEFAULT_HP = 40
	local ADD_HP = 10

	local DEFAULT_ATK = 10
	local ADD_ATK = 10

	local DEFAULT_DEF = 10
	local ADD_DEF = 10

	local DEFAULT_MOVE_SPEED = 150
	local ADD_MOVE_SPEED = 5

	local DEFAULT_ATTACK_SPEED = 200
	local SUB_ATTACK_SPEED = 10

	local DEFAULT_CRITICAL_PERCENT = 10
	local ADD_CRITICAL_PERCENT = 1

	local DEFAULT_CRITICAL_DAMAGE = 110
	local ADD_CRITICAL_DAMAGE = 5

	local DEFAULT_HP_AMOUNT = 1
	local ADD_HP_AMOUNT = 1

	local DEFAULT_EVASION_PERCENT = 10
	local ADD_EVASION_PERCENT = 1

	local count_0 = unit.CountItem(0) -- 최대 체력 증가
	local count_1 = unit.CountItem(1) -- 회복량 증가
	local count_2 = unit.CountItem(2) -- 이동 속도 증가
	local count_3 = unit.CountItem(3) -- 공격 속도 증가
	local count_4 = unit.CountItem(4) -- 공격력 증가
	local count_5 = unit.CountItem(5) -- 방어력 증가
	local count_6 = unit.CountItem(6) -- 치명타 피해량 증가
	local count_7 = unit.CountItem(7) -- 치명타 확률 증가
	local count_8 = unit.CountItem(8) -- 회피 확률 증가

	--unit.moveSpeed = 500
	-- 체력(레벨업)
	local prev_count_0 = unit.GetVar(10)
	if count_0 > prev_count_0 then
		unit.AddEXP(count_0 - prev_count_0)
	end
	unit.SetVar(10, count_0)

	-- 회복량 (MAGIC_DEFENSE = 3)
	unit.SetStat(3, DEFAULT_HP_AMOUNT + ADD_HP_AMOUNT * count_1)

	-- 이동 속도(moveSpeed)
	unit.moveSpeed = DEFAULT_MOVE_SPEED + ADD_MOVE_SPEED * count_2

	-- 공격 속도(AGILITY = 4)
	unit.SetStat(4, DEFAULT_ATTACK_SPEED - SUB_ATTACK_SPEED * count_3)

	-- 공격력(ATTACK = 0)
	unit.SetStat(0, DEFAULT_ATK + ADD_ATK * count_4)

	-- 방어력(DEFENSE = 1)
	unit.SetStat(1, DEFAULT_DEF + ADD_DEF * count_5)

	-- 크리티컬 피해량 (MAGIC_ATTACK = 2)
	unit.SetStat(2, DEFAULT_CRITICAL_DAMAGE + ADD_CRITICAL_DAMAGE * count_6)

	-- 크리티컬 확률(LUCKY = 5)
	unit.SetStat(5, DEFAULT_CRITICAL_PERCENT + ADD_CRITICAL_PERCENT * count_7)

	-- 회피 확률 (CUSTOM_1 = 101)
	unit.SetStat(101, DEFAULT_EVASION_PERCENT + ADD_EVASION_PERCENT * count_8)


	unit.SendUpdated()

end

Server.GetTopic("REFRESH_STAT").Add(REFRESH_STAT)

