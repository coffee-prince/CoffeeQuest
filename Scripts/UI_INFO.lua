

function INFO_INIT ()

	local is_show = false

	local OFFSET_X_INFO = 10
	local OFFSET_Y_INFO = 96
	local WIDTH_INFO = 460
	local HEIGHT_INFO = 662

	local OFFSET_X_CLOSE = 438
	local OFFSET_Y_CLOSE = 98
	local WIDTH_CLOSE = 30
	local HEIGHT_CLOSE = 30


	local UI_INFO = Image("Pictures/UI/info.png", Rect(OFFSET_X_INFO, OFFSET_Y_INFO, WIDTH_INFO, HEIGHT_INFO))
	local UI_INFO_CLOSE_BTN = Button("gfdgd", Rect(OFFSET_X_CLOSE, OFFSET_Y_CLOSE, WIDTH_CLOSE, HEIGHT_CLOSE))
	local UI_INFO_CLOSE_IMAGE = Image("Pictures/UI/close.png", Rect(0, 0, WIDTH_CLOSE, HEIGHT_CLOSE))


	UI_INFO_CLOSE_BTN.AddChild(UI_INFO_CLOSE_IMAGE)
    UI_INFO_CLOSE_BTN.SetOpacity(0)

	UI_INFO.showOnTop = true
	UI_INFO_CLOSE_BTN.showOnTop = true

	UI_INFO.visible = false
	UI_INFO_CLOSE_BTN.visible = false





	local fn = {}

	fn.IsShow = function()
		return is_show
	end


	fn.Show = function()

		is_show = true
		UI_INFO.visible = true
		UI_INFO_CLOSE_BTN.visible = true
	end

	fn.Hide = function()
		is_show = false
		UI_INFO.visible = false
		UI_INFO_CLOSE_BTN.visible = false
	end

	UI_INFO_CLOSE_BTN.onClick.Add(function()
		fn.Hide()
	end)


	return fn
end



