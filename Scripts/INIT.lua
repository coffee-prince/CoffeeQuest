Client.GetTopic("INIT").Add(function()

	Client.RunLater(function()
		CameraSmoothMove()

		HUD_Initialize()

		AUTO = AutoAttack()
		AUTO.Start()

		PROFILE = PROFILE_INIT()
		PASSIVE = PASSIVE_INIT()
		DUNGEON = DUNGEON_INIT()
		BOSS = BOSS_INIT()
		INFO = INFO_INIT()
		PARTICLE = PARTICLE_INIT()
		Client.FireEvent("KILL_BOSS_REQUEST", 0)
	end, 1)

end)
