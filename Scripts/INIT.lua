Client.GetTopic("INIT").Add(function()

	Client.RunLater(function()
		CameraSmoothMove()

		HUD_Initialize()

		AUTO = AutoAttack()
		AUTO.Start()

		PROFILE = PROFILE_INIT()
		PASSIVE = PASSIVE_INIT()
		COFFEE = COFFEE_INIT()
	end, 1)

end)