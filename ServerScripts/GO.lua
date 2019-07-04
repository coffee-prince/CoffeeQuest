Server.GetTopic("REQUEST_GO").Add(function(map_id)
	print(map_id)
	unit.SpawnAtFieldID(map_id, 14 * 32, 17 * -32)
end)
