
Server.GetTopic("KILL_BOSS_REQUEST").Add(function(bossID)
	local id = 150 + bossID

	unit.SetVar(id, 1)


	unit.FireEvent("KILL_BOSS_RESPONSE", unit.GetVar(151), unit.GetVar(152), unit.GetVar(153), unit.GetVar(154), unit.GetVar(155), unit.GetVar(156)  )
end)
