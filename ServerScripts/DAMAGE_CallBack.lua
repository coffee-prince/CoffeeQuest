Server.damageCallback = function(attacker, defender, damage, skillID)

	-- ����1 �˹�
	if skillID == 10 then
		defender.MakeKnockback(32 * 2, 0.1)
		return 0
	end

	-- ����2 ����
	if skillID == 11 then
		defender.AddHP(3)
		defender.FireEvent("Heal", 1)
		return 0
	end

	if attacker.type == 0 then -- �÷��̾ �����ϴ� ���


		critical_percent = attacker.GetStat(5)
		critical_damage  = attacker.GetStat(2)

		-- ũ��Ƽ�� ����
		if math.random(1, 100) <= critical_percent then
			d = math.max(attacker.atk - defender.def, 1)
			return d * (critical_damage / 100)
		end

		if attacker.characterID == 1 then
			defender.MakeKnockback(32 * 1.5, 0.1)
		end



		return math.max(attacker.atk - defender.def, 1)
	end

	if attacker.type == 2 then -- ���Ͱ� �����ϴ� ���

		evasion_percent = attacker.GetStat(101)
		-- ȸ�� ����
		if math.random(1, 100) <= evasion_percent then
			return 0
		end

		-- ���� Ȳ��(�˹�)
		if attacker.monsterID == 0 then

			defender.MakeKnockback(16, 0.3)
		end


		-- �ʷ��� / ȫ����
		if attacker.monsterID == 2 or attacker.monsterID == 3 or attacker.monsterID == 4 then
			return math.max(attacker.magicAtk - defender.def, 1)
		end


		return math.max(attacker.atk - defender.def, 1)
	end

	return damage
end
