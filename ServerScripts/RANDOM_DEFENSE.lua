Server.GetTopic("RANDOM_DEFENSE").Add(function()
	local field = unit.field

	local ex = math.random(10, 25)
	field.SetFieldVar(0, ex)

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
end)
