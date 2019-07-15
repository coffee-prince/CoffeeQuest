Server.GetTopic("OUT").Add(function(map_id)


	unit.SendCenterLabel("3초후 마을로 이동합니다.")

	local u = unit

	Server.RunLater(function()
		u.SpawnAtFieldID(1, 18 * 32, 14 * -32)
	end, 3)


end)
