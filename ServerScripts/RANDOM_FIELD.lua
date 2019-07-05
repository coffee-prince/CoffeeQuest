Server.GetTopic("RANDOM_FIELD").Add(function()
	local field = unit.field

	local sum = 0
	for i = 0, 8 do
		sum = sum + unit.CountItem(i) -- 패시브 개수
	end

	local level = math.floor(sum / 10)

	if sum <= 10 then

		level = 0

	elseif sum <= 25 then
		level = 1

	elseif sum <= 45 then
		level = 2

	elseif sum <= 65 then
		level = 3

	elseif sum <= 85 then
		level = 4

	else
		level = 5
	end


	local ex = math.random(5, 20)



	--local ex = math.random(5,200)

	field.SetFieldVar(0, ex)

	for i = 1, ex do
		local monster_id = math.random(7, 12)
		monster_id = monster_id  + 5 * math.random(0, math.min(level, 5))

		--print(monster_id)

		local spawn_x = math.random(32 * 4, 32 * 28)
		local spawn_y = math.random(-32 * 6, -32 * 18)

		field.SpawnEnemy(monster_id, spawn_x, spawn_y)
	end

end)
