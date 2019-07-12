Server.damageCallback = function(attacker, defender, damage, skillID)

	-- ����1 �˹�
	if skillID == 10 then
				if  defender.monsterID == 1 then return 10 end
				if  defender.monsterID == 2 then return 10 end
				if  defender.monsterID == 3 then return 10 end
				if  defender.monsterID == 4 then return 10 end
				if  defender.monsterID == 5 then return 10 end
				if  defender.monsterID == 6 then return 10 end

		defender.MakeKnockback(32 * 5, 0.1)

		return 0
	end

	-- ����2 ����
	if skillID == 11 then
		defender.AddHP(3)
		defender.FireEvent("Heal", 1)
		return 0
	end

	if skillID == 29 then
		return 1

	end

	if attacker.type == 0 then -- �÷��̾ �����ϴ� ���


		critical_percent = attacker.GetStat(5)
		critical_damage  = attacker.GetStat(2)

		-- ũ��Ƽ�� ����
		if math.random(1, 100) <= critical_percent then
			d = math.max(attacker.atk - defender.def, 1)
			return d * (critical_damage / 100)
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

			defender.MakeKnockback(32*2, 0.5)
		end


		-- �ʷ��� / ȫ���� / ���� / ������
		if  attacker.monsterID == 2 or
		    attacker.monsterID == 3 or
		    attacker.monsterID == 4 or
		    attacker.monsterID == 5 or
			attacker.monsterID == 6 or
			attacker.monsterID == 70 or
			attacker.monsterID == 71 or
			attacker.monsterID == 72 or
			attacker.monsterID == 73 or

			attacker.monsterID == 9 or
			attacker.monsterID == 10 or
			attacker.monsterID == 11 or
			attacker.monsterID == 12 or

			attacker.monsterID == 15 or
			attacker.monsterID == 16 or
			attacker.monsterID == 17 or
			attacker.monsterID == 18 or

			attacker.monsterID == 21 or
			attacker.monsterID == 22 or
			attacker.monsterID == 23 or
			attacker.monsterID == 24 or

			attacker.monsterID == 27 or
			attacker.monsterID == 28 or
			attacker.monsterID == 29 or
			attacker.monsterID == 30 or


			attacker.monsterID == 33 or
			attacker.monsterID == 34 or
			attacker.monsterID == 35 or
			attacker.monsterID == 36 or

			attacker.monsterID == 39 or
			attacker.monsterID == 40 or
			attacker.monsterID == 41 or
			attacker.monsterID == 42 or

			attacker.monsterID == 45 or
			attacker.monsterID == 46 or
			attacker.monsterID == 47 or
			attacker.monsterID == 48 or

			attacker.monsterID == 89 -- 수룡

			then
			return math.max(attacker.magicAtk - defender.def, 1)
		end


		return math.max(attacker.atk - defender.def, 1)
	end

	return damage
end
