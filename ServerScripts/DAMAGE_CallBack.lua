Server.damageCallback = function(attacker, defender, damage, skillID)

	print(attacker.type)

	print(attacker.attack)
	print(attacker.atk)

	if attacker.type == 0 then -- 플레이어가 공격하는 경우

	end

	if attacker.type == 2 then -- 몬스터가 공격하는 경우


		defender.MakeKnockback(32 * 2, 0.3)
		return math.max(attacker.atk - defender.def , 1)
	end

	return damage
end
