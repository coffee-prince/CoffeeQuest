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

	local count_0 = unit.CountItem(0) -- �ִ� ü�� ����
	local count_1 = unit.CountItem(1) -- ȸ���� ����
	local count_2 = unit.CountItem(2) -- �̵� �ӵ� ����
	local count_3 = unit.CountItem(3) -- ���� �ӵ� ����
	local count_4 = unit.CountItem(4) -- ���ݷ� ����
	local count_5 = unit.CountItem(5) -- ���� ����
	local count_6 = unit.CountItem(6) -- ġ��Ÿ ���ط� ����
	local count_7 = unit.CountItem(7) -- ġ��Ÿ Ȯ�� ����
	local count_8 = unit.CountItem(8) -- ȸ�� Ȯ�� ����

	--unit.moveSpeed = 500
	-- ü��(������)
	local prev_count_0 = unit.GetVar(10)
	if count_0 > prev_count_0 then
		unit.AddEXP(count_0 - prev_count_0)
	end
	unit.SetVar(10, count_0)

	-- ȸ���� (MAGIC_DEFENSE = 3)
	unit.SetStat(3, DEFAULT_HP_AMOUNT + ADD_HP_AMOUNT * count_1)

	-- �̵� �ӵ�(moveSpeed)
	unit.moveSpeed = DEFAULT_MOVE_SPEED + ADD_MOVE_SPEED * count_2

	-- ���� �ӵ�(AGILITY = 4)
	unit.SetStat(4, DEFAULT_ATTACK_SPEED - SUB_ATTACK_SPEED * count_3)

	-- ���ݷ�(ATTACK = 0)
	unit.SetStat(0, DEFAULT_ATK + ADD_ATK * count_4)

	-- ����(DEFENSE = 1)
	unit.SetStat(1, DEFAULT_DEF + ADD_DEF * count_5)

	-- ũ��Ƽ�� ���ط� (MAGIC_ATTACK = 2)
	unit.SetStat(2, DEFAULT_CRITICAL_DAMAGE + ADD_CRITICAL_DAMAGE * count_6)

	-- ũ��Ƽ�� Ȯ��(LUCKY = 5)
	unit.SetStat(5, DEFAULT_CRITICAL_PERCENT + ADD_CRITICAL_PERCENT * count_7)

	-- ȸ�� Ȯ�� (CUSTOM_1 = 101)
	unit.SetStat(101, DEFAULT_EVASION_PERCENT + ADD_EVASION_PERCENT * count_8)


	unit.SendUpdated()

end

Server.GetTopic("REFRESH_STAT").Add(REFRESH_STAT)

