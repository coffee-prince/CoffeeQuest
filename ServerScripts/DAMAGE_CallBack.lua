Server.damageCallback = function(attacker, defender, damage, skillID)

	print(attacker.type)

	print(attacker.attack)
	print(attacker.atk)

	if attacker.type == 0 then -- �÷��̾ �����ϴ� ���

	end

	if attacker.type == 2 then -- ���Ͱ� �����ϴ� ���


		defender.MakeKnockback(32 * 2, 0.3)
		return math.max(attacker.atk - defender.def , 1)
	end

	return damage
end
