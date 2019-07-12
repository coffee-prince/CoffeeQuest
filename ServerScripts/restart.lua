local DEFAULT_HP = 100
	local ADD_HP = 5

	--local DEFAULT_ATK = 5
	local DEFAULT_ATK = 5
	local ADD_ATK = 1

	local DEFAULT_DEF = 5
	local ADD_DEF = 1

	local DEFAULT_MOVE_SPEED = 150
	local ADD_MOVE_SPEED = 1

	local DEFAULT_ATTACK_SPEED = 150
	local SUB_ATTACK_SPEED = 1

	local DEFAULT_CRITICAL_PERCENT = 10
	local ADD_CRITICAL_PERCENT = 1

	local DEFAULT_CRITICAL_DAMAGE = 120
	local ADD_CRITICAL_DAMAGE = 1

	local DEFAULT_HP_AMOUNT = 1
	local ADD_HP_AMOUNT = 1

	local DEFAULT_EVASION_PERCENT = 10
	local ADD_EVASION_PERCENT = 1

function restart(name, count)
	local players = Server.players
	local u = nil
	for i = 1, #players do
		if(players[i].name == name) then
			u = players[i].unit

			u.RemoveItem(0, 9999999)
			u.RemoveItem(1, 9999999)
			u.RemoveItem(2, 9999999)
			u.RemoveItem(3, 9999999)
			u.RemoveItem(4, 9999999)
			u.RemoveItem(5, 9999999)
			u.RemoveItem(6, 9999999)
			u.RemoveItem(7, 9999999)
			u.RemoveItem(8, 9999999)
			u.RemoveItem(15, 99999999)

			local count_0 = 0
			local count_1 = 0
			local count_2 = 0
			local count_3 = 0
			local count_4 = 0
			local count_5 = 0
			local count_6 = 0
			local count_7 = 0
			local count_8 = 0

			unit.SetVar(101, 0)
			unit.SetVar(100, count_0)
			unit.SetStat(3, DEFAULT_HP_AMOUNT + ADD_HP_AMOUNT * count_1)
			unit.moveSpeed = DEFAULT_MOVE_SPEED + ADD_MOVE_SPEED * count_2
			unit.SetStat(4, DEFAULT_ATTACK_SPEED - SUB_ATTACK_SPEED * count_3)
			unit.SetStat(0, DEFAULT_ATK + ADD_ATK * count_4)
			unit.SetStat(1, DEFAULT_DEF + ADD_DEF * count_5)
			unit.SetStat(2, DEFAULT_CRITICAL_DAMAGE + ADD_CRITICAL_DAMAGE * count_6)
			unit.SetStat(5, DEFAULT_CRITICAL_PERCENT + ADD_CRITICAL_PERCENT * count_7)
			unit.SetStat(101, DEFAULT_EVASION_PERCENT + ADD_EVASION_PERCENT * count_8)
		end
	end


end

