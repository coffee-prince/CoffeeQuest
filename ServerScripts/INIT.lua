Server.onJoinPlayer.Add(function(roomPlayer)
	roomPlayer.unit.FireEvent("INIT", 1)
end)
