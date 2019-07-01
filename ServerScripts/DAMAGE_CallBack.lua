Server.damageCallback = function(attacker, defender, damage, skillID)

	print(attacker.type)

	--print(attacker.attack)
	--print(attacker.atk)

	if attacker.type == 0 then -- 플레이어가 공격하는 경우

		critical_percent = attacker.GetStat(5)
		critical_damage  = attacker.GetStat(2)

		-- 크리티컬 적용
		if math.random(1, 100) <= critical_percent then
			d = math.max(attacker.atk - defender.def, 1)
			return d * (critical_damage / 100)
		end

		if attacker.id == 1 then
			defender.MakeKnockback(32 * 1.5, 0.1)
		end


		return math.max(attacker.atk - defender.def, 1)
	end

	if attacker.type == 2 then -- 몬스터가 공격하는 경우

		evasion_percent = attacker.GetStat(101)
		-- 회피 적용
		if math.random(1, 100) <= evasion_percent then
			return 0
		end

		-- 성난 황소(넉백)
		if attacker.monsterID == 0 then

			defender.MakeKnockback(16, 0.3)
		end

		-- 초롱이 / 홍삼이
		if attacker.monsterID == 2 or attacker.monsterID == 3 then
			return math.max(attacker.magicAtk - defender.def, 1)
		end


		return math.max(attacker.atk - defender.def, 1)
	end

	return damage
end
