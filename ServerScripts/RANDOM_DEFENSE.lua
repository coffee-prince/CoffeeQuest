Server.GetTopic("RANDOM_DEFENSE").Add(function()
	local field = unit.field

	local ex = math.random(5, 25)

	local dir = 1
	local spawn_x = 0
	local spawn_y = 0


	for i = 1, ex do
		dir = math.random(1, 4)

		if dir == 1 then
			spawn_x = 208
			spawn_y = math.random(-544, -288)
		end

		if dir == 2 then
			spawn_x = math.random(208, 592)
			spawn_y = -288
		end

		if dir == 3 then
			spawn_x = 592
			spawn_y = math.random(-544, -288)
		end

		if dir == 4 then
			spawn_x = math.random(208, 592)
			spawn_y = -544
		end

		field.SpawnEnemy(math.random(60, 62), spawn_x, spawn_y)
	end



	--local ex = math.random(5,200)

	for i = 1, ex do
		local monster_id = math.random(7, 12)
		monster_id = monster_id  + 5 * math.random(0, math.min(level, 6))



		--print(monster_id)

		local spawn_x = math.random(32 * 4, 32 * 28)
		local spawn_y = math.random(-32 * 6, -32 * 18)


	end

end)
