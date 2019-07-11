Server.GetTopic("RANDOM_FIELD").Add(function()
	local field = unit.field

	local sum = 0
	for i = 0, 8 do
		sum = sum + unit.CountItem(i) -- íŒ¨ì‹œë¸Œ ê°œìˆ˜
	end

	local level = math.floor(sum / 10)

	if sum <= 10 then

		level = 0 --2 Å½Å½

	elseif sum <= 45 then
		level = 1 --3 ÆÄ½ºÄíÄ¡

	elseif sum <= 100 then
		level = 2 --4 Åõ½æ

	elseif sum <= 250 then
		level = 3 --5 Ç®¹Ù³Ý

	elseif sum <= 300 then
		level = 4 --6 ÇÒ¸®½º

	elseif sum <= 400 then
		level = 5 --7 ÀÌµð¾

	else
		level = 6
	end


	local ex = math.random(5, 20)



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
