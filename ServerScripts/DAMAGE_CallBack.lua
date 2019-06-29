Server.damageCallback = function(attacker, defender, damage, skillID)

	print(attacker.type)

	print(attacker.attack)
	print(attacker.atk)

	if attacker.type == 0 then -- �÷��̾ �����ϴ� ���

		critical_percent = attacker.GetStat(5)
		critical_damage  = attacker.GetStat(2)

		-- ũ��Ƽ�� ����
		if math.random(1, 100) <= critical_percent then
			d = math.max(attacker.atk - defender.def, 1)
			return d * (critical_damage / 100)
		end

		if attacker.id == 1 then
			defender.MakeKnockback(32 * 5, 0.3)
		end


		return math.max(attacker.atk - defender.def, 1)
	end

	if attacker.type == 2 then -- ���Ͱ� �����ϴ� ���

		evasion_percent = attacker.GetStat(101)
		-- ȸ�� ����
		if math.random(1, 100) <= evasion_percent then
			return 0
		end

		defender.MakeKnockback(32 * 2, 0.3)

		return math.max(attacker.atk - defender.def, 1)
	end

	return damage
end
