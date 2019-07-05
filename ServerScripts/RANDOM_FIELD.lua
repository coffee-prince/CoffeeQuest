Server.GetTopic("RANDOM_FIELD").Add(function()
	local field = unit.field

	local sum = 0
	for i = 0, 8 do
		sum = sum + unit.CountItem(i) -- 패시브 개수
	end

	local level = math.floor(sum / 10)

	local ex = math.random(5, math.min(50, math.max(sum * 4, 10)))
	--local ex = math.random(5,200)

	field.SetFieldVar(0, ex)

	for i = 1, ex do
		local monster_id = math.random(7, 12)
		monster_id = monster_id  + 5 * math.random(0, math.min(level, 6))

		--print(monster_id)

		local spawn_x = math.random(32 * 4, 32 * 28)
		local spawn_y = math.random(-32 * 6, -32 * 18)

		field.SpawnEnemy(monster_id, spawn_x, spawn_y)
	end

end)
