

function OUT_INIT ()

	local is_show = false

	local OFFSET_X_CLOSE = 408
	local OFFSET_Y_CLOSE = 120
	local WIDTH_CLOSE = 52
	local HEIGHT_CLOSE = 52

	local UI_INFO_CLOSE_BTN = Button("gfdgd", Rect(OFFSET_X_CLOSE, OFFSET_Y_CLOSE, WIDTH_CLOSE, HEIGHT_CLOSE))
	local UI_INFO_CLOSE_IMAGE = Image("Pictures/HUD/out.png", Rect(0, 0, WIDTH_CLOSE, HEIGHT_CLOSE))


	UI_INFO_CLOSE_BTN.AddChild(UI_INFO_CLOSE_IMAGE)
    UI_INFO_CLOSE_BTN.SetOpacity(0)


	UI_INFO_CLOSE_BTN.showOnTop = true

	UI_INFO_CLOSE_BTN.visible = false





	local fn = {}

	fn.IsShow = function()
		return is_show
	end


	fn.Show = function()

		is_show = true
		UI_INFO_CLOSE_BTN.visible = true
	end

	fn.Hide = function()
		is_show = false
		UI_INFO_CLOSE_BTN.visible = false
	end

	UI_INFO_CLOSE_BTN.onClick.Add(function()
		fn.Hide()
		Client.FireEvent("OUT", 1)
	end)


	return fn
end



