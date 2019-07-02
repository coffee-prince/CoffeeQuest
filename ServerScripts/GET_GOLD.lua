Server.GetTopic("GET_GOLD").Add(function(percent, gold)
	print(percent)
	print(gold)
	if math.random(1, 100) <= percent then
		unit.AddGameMoney(gold)
	end
end)
