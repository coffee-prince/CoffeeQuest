Server.GetTopic("REQUEST_GO").Add(function(map_id)
	print(map_id)

	if map_id == 52 then
		unit.SpawnAtFieldID(map_id, 14 * 32, 17 * -32)
	end

	if map_id == 35 then
		unit.SpawnAtFieldID(map_id, 11 * 32, 14 * -32)
	end

	if map_id == 51 then
		unit.SpawnAtFieldID(map_id, 12 * 32, 20 * -32)
	end

	if map_id == 28 then
		unit.SpawnAtFieldID(map_id, 11 * 32, 16 * -32)
	end

end)
