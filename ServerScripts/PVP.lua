Server.GetTopic("pvp").Add(function()
	local f = Server.CreateField(59)

	print(f)
	print(unit)
	unit.SpawnAtFieldID(59, 0, 0)
end)
