

function PASSIVE_INIT ()

	local is_show = false

	local OFFSET_X_PASSIVE = 209
	local OFFSET_Y_PASSIVE = 113
	local WIDTH_PASSIVE = 260
	local HEIGHT_PASSIVE = 542

	local OFFSET_X_CLOSE = 437
	local OFFSET_Y_CLOSE = 126
	local WIDTH_CLOSE = 30
	local HEIGHT_CLOSE = 30


	local UI_PASSIVE = Image("Pictures/UI/passive.png", Rect(OFFSET_X_PASSIVE, OFFSET_Y_PASSIVE, WIDTH_PASSIVE, HEIGHT_PASSIVE))
	local UI_PASSIVE_CLOSE_BTN = Button("gfdgd", Rect(OFFSET_X_CLOSE, OFFSET_Y_CLOSE, WIDTH_CLOSE, HEIGHT_CLOSE))
	local UI_PASSIVE_CLOSE_IMAGE = Image("Pictures/UI/close.png", Rect(0, 0, WIDTH_CLOSE, HEIGHT_CLOSE))


	UI_PASSIVE_CLOSE_BTN.AddChild(UI_PASSIVE_CLOSE_IMAGE)
    UI_PASSIVE_CLOSE_BTN.SetOpacity(0)

	UI_PASSIVE.showOnTop = true
	UI_PASSIVE_CLOSE_BTN.showOnTop = true

	UI_PASSIVE.visible = false
	UI_PASSIVE_CLOSE_BTN.visible = false


	local OFFSET_X_FONT = 409

	local OFFSET_Y_FONT = {}
	OFFSET_Y_FONT[1] = 171
	OFFSET_Y_FONT[2] = 171 + 54
	OFFSET_Y_FONT[3] = 171 + 54 + 54
	OFFSET_Y_FONT[4] = 171 + 54 + 54 + 54
	OFFSET_Y_FONT[5] = 171 + 54 + 54 + 54 + 54
	OFFSET_Y_FONT[6] = 171 + 54 + 54 + 54 + 54 + 54
	OFFSET_Y_FONT[7] = 171 + 54 + 54 + 54 + 54 + 54 + 54
	OFFSET_Y_FONT[8] = 171 + 54 + 54 + 54 + 54 + 54 + 54 + 54
	OFFSET_Y_FONT[9] = 171 + 54 + 54 + 54 + 54 + 54 + 54 + 54 + 54


	local WIDTH_FONT = 46
	local HEIGHT_FONT = 18

	local UI_STATS = {}

	for i = 1, 9 do
		UI_STATS[i] = Text("100", Rect(OFFSET_X_FONT, OFFSET_Y_FONT[i], WIDTH_FONT, HEIGHT_FONT))
		UI_STATS[i].showOnTop = true
		UI_STATS[i].textAlign = 5
		UI_STATS[i].textSize = 12
		UI_STATS[i].color = Color(0, 0, 0, 255)
		UI_STATS[i].visible = false
	end



	local fn = {}

	fn.IsShow = function()
		return is_show
	end


	fn.Show = function()
		Client.FireEvent("REFRESH_STAT", 1)

		is_show = true
		UI_PASSIVE.visible = true
		UI_PASSIVE_CLOSE_BTN.visible = true
		for i = 1, 9 do
			UI_STATS[i].visible = true
		end
	end

	fn.Hide = function()
		is_show = false
		UI_PASSIVE.visible = false
		UI_PASSIVE_CLOSE_BTN.visible = false
		for i = 1, 9 do
			UI_STATS[i].visible = false
		end
	end

	UI_PASSIVE_CLOSE_BTN.onClick.Add(function()
		fn.Hide()
	end)

	Client.GetTopic("REFRESH_COUNT").Add(function(stat1, stat2, stat3, stat4, stat5, stat6, stat7, stat8, stat9)
		UI_STATS[1].text = stat1 .. "개"
		UI_STATS[2].text = stat2 .. "개"
		UI_STATS[3].text = stat3 .. "개"
		UI_STATS[4].text = stat4 .. "개"
		UI_STATS[5].text = stat5 .. "개"
		UI_STATS[6].text = stat6 .. "개"
		UI_STATS[7].text = stat7 .. "개"
		UI_STATS[8].text = stat8 .. "개"
		UI_STATS[9].text = stat9 .. "개"
	end)

	return fn
end



