

function PROFILE_INIT ()

	local is_show = false

	local OFFSET_X_PROFILE = 0
	local OFFSET_Y_PROFILE = 97
	local WIDTH_PROFILE = 337
	local HEIGHT_PROFILE = 364

	local OFFSET_X_CLOSE = 304
	local OFFSET_Y_CLOSE = 101
	local WIDTH_CLOSE = 30
	local HEIGHT_CLOSE = 30


	local UI_PROFILE = Image("Pictures/UI/profile.png", Rect(OFFSET_X_PROFILE, OFFSET_Y_PROFILE, WIDTH_PROFILE, HEIGHT_PROFILE))
	local UI_PROFILE_CLOSE_BTN = Button("gfdgd", Rect(OFFSET_X_CLOSE, OFFSET_Y_CLOSE, WIDTH_CLOSE, HEIGHT_CLOSE))
	local UI_PROFILE_CLOSE_IMAGE = Image("Pictures/UI/close.png", Rect(0, 0, WIDTH_CLOSE, HEIGHT_CLOSE))


	UI_PROFILE_CLOSE_BTN.AddChild(UI_PROFILE_CLOSE_IMAGE)
    UI_PROFILE_CLOSE_BTN.SetOpacity(0)

	UI_PROFILE.showOnTop = true
	UI_PROFILE_CLOSE_BTN.showOnTop = true

	UI_PROFILE.visible = false
	UI_PROFILE_CLOSE_BTN.visible = false


	local OFFSET_X_FONT = 111

	local OFFSET_Y_FONT = {}
	OFFSET_Y_FONT[1] = 140
	OFFSET_Y_FONT[2] = 140 + 28
	OFFSET_Y_FONT[3] = 140 + 28 + 28
	OFFSET_Y_FONT[4] = 140 + 28 + 28 + 28
	OFFSET_Y_FONT[5] = 140 + 28 + 28 + 28 + 28
	OFFSET_Y_FONT[6] = 140 + 28 + 28 + 28 + 28 + 28
	OFFSET_Y_FONT[7] = 140 + 28 + 28 + 28 + 28 + 28 + 28
	OFFSET_Y_FONT[8] = 140 + 28 + 28 + 28 + 28 + 28 + 28 + 28
	OFFSET_Y_FONT[9] = 140 + 28 + 28 + 28 + 28 + 28 + 28 + 28 + 28


	local WIDTH_FONT = 200
	local HEIGHT_FONT = 14

	UI_STATS = {}

	for i = 1, 9 do
		UI_STATS[i] = Text("100", Rect(OFFSET_X_FONT, OFFSET_Y_FONT[i], WIDTH_FONT, HEIGHT_FONT))
		UI_STATS[i].showOnTop = true
		UI_STATS[i].textAlign = 5
		UI_STATS[i].textSize = 12
		UI_STATS[i].color = Color(0, 0, 0, 255)
		UI_STATS[i].visible = false
	end



	fn = {}

	fn.IsShow = function()
		return is_show
	end


	fn.Show = function()
		Client.FireEvent("REFRESH_STAT", 1)

		is_show = true
		UI_PROFILE.visible = true
		UI_PROFILE_CLOSE_BTN.visible = true
		for i = 1, 9 do
			UI_STATS[i].visible = true
		end
	end

	fn.Hide = function()
		is_show = false
		UI_PROFILE.visible = false
		UI_PROFILE_CLOSE_BTN.visible = false
		for i = 1, 9 do
			UI_STATS[i].visible = false
		end
	end

	UI_PROFILE_CLOSE_BTN.onClick.Add(function()
		fn.Hide()
	end)

	Client.GetTopic("REFRESH").Add(function(stat1, stat2, stat3, stat4, stat5, stat6, stat7, stat8, stat9)
		UI_STATS[1].text = stat1
		UI_STATS[2].text = stat2
		UI_STATS[3].text = stat3
		UI_STATS[4].text = stat4
		UI_STATS[5].text = stat5
		UI_STATS[6].text = stat6
		UI_STATS[7].text = stat7 .. "%"
		UI_STATS[8].text = stat8 .. "%"
		UI_STATS[9].text = stat9 .. "%"
	end)

	return fn
end



