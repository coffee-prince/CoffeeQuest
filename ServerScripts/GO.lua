Server.GetTopic("REQUEST_GO").Add(function(map_id)
	print(map_id)

	if map_id == 52 then -- 파밍던전
		unit.SpawnAtFieldID(map_id, 14 * 32, 17 * -32)
	end

	if map_id == 35 then -- 탐탐
		unit.SpawnAtFieldID(map_id, 11 * 32, 14 * -32)
	end

	if map_id == 53 then -- 폴바셋
		unit.SpawnAtFieldID(map_id, 11 * 32, 14 * -32)
	end

	if map_id == 28 then -- 파스꾸찌
		unit.SpawnAtFieldID(map_id, 11 * 32, 16 * -32)
	end

	if map_id == 55 then -- 할리스
		unit.SpawnAtFieldID(map_id, 9 * 32, 16 * -32)
	end

	if map_id == 56 then -- 투썸
		unit.SpawnAtFieldID(map_id, 12 * 32, 17 * -32)
	end

	if map_id == 51 then -- 이디야
		unit.SpawnAtFieldID(map_id, 12 * 32, 20 * -32)
	end
end)
