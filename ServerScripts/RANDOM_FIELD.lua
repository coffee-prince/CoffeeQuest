Server.GetTopic("RANDOM_FIELD").Add(function()
	local field = unit.field

	local sum = 0
	for i = 0, 8 do
		sum = sum + unit.CountItem(i) -- 패시브 개수
	end

	print("전투력:" .. sum)



	local ex = math.random(sum, math.max(3, sum * 3))

	--field.SetFieldVar(3, ex)

	for i = 1, ex do
		field.SpawnEnemy(math.random(0, 4), 32*15, -32*15)
	end

end)
