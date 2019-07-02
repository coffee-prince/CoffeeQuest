

function COFFEE_INIT ()

	local is_show = false

	local OFFSET_X_COFFEE = 9
	local OFFSET_Y_COFFEE = 113
	local WIDTH_COFFEE = 460
	local HEIGHT_COFFEE = 232

	local OFFSET_X_CLOSE = 437
	local OFFSET_Y_CLOSE = 126
	local WIDTH_CLOSE = 30
	local HEIGHT_CLOSE = 30

	local UI_COFFEE = Image("Pictures/UI/coffee.png", Rect(OFFSET_X_COFFEE, OFFSET_Y_COFFEE, WIDTH_COFFEE, HEIGHT_COFFEE))
	local UI_COFFEE_CLOSE_BTN = Button("gfdgd", Rect(OFFSET_X_CLOSE, OFFSET_Y_CLOSE, WIDTH_CLOSE, HEIGHT_CLOSE))
	local UI_COFFEE_CLOSE_IMAGE = Image("Pictures/UI/close.png", Rect(0, 0, WIDTH_CLOSE, HEIGHT_CLOSE))


	UI_COFFEE_CLOSE_BTN.AddChild(UI_COFFEE_CLOSE_IMAGE)
    UI_COFFEE_CLOSE_BTN.SetOpacity(0)

	UI_COFFEE.showOnTop = true
	UI_COFFEE_CLOSE_BTN.showOnTop = true

	UI_COFFEE.visible = false
	UI_COFFEE_CLOSE_BTN.visible = false


	local OFFSET_X_COFFEE_1 = 25
	local OFFSET_Y_COFFEE_1 = 208
	local WIDTH_COFFEE_1 = 140
	local HEIGHT_COFFEE_1 = 121

	local OFFSET_X_COFFEE_2 = 170
	local OFFSET_Y_COFFEE_2 = 208
	local WIDTH_COFFEE_2 = 140
	local HEIGHT_COFFEE_2 = 121

	local OFFSET_X_COFFEE_3 = 315
	local OFFSET_Y_COFFEE_3 = 208
	local WIDTH_COFFEE_3 = 140
	local HEIGHT_COFFEE_3 = 121

	local coffees = {}
	coffees[1] = Image("Pictures/UI/coffee_1.png", Rect(OFFSET_X_COFFEE_1, OFFSET_Y_COFFEE_1, WIDTH_COFFEE_1, HEIGHT_COFFEE_1))
	coffees[2] = Image("Pictures/UI/coffee_2.png", Rect(OFFSET_X_COFFEE_2, OFFSET_Y_COFFEE_2, WIDTH_COFFEE_2, HEIGHT_COFFEE_2))
	coffees[3] = Image("Pictures/UI/coffee_3.png", Rect(OFFSET_X_COFFEE_3, OFFSET_Y_COFFEE_3, WIDTH_COFFEE_3, HEIGHT_COFFEE_3))
	for i = 1, 3 do
		coffees[i].visible = false
		coffees[i].showOnTop = true
	end

	local fn = {}

	fn.IsShow = function()
		return is_show
	end


	fn.Show = function()
		is_show = true
		UI_COFFEE.visible = true
		UI_COFFEE_CLOSE_BTN.visible = true
		for i = 1, 3 do
			coffees[i].visible = true
		end
	end

	fn.Hide = function()
		is_show = false
		UI_COFFEE.visible = false
		UI_COFFEE_CLOSE_BTN.visible = false
		for i = 1, 3 do
			coffees[i].visible = false
		end
	end

	UI_COFFEE_CLOSE_BTN.onClick.Add(function()
		fn.Hide()
	end)


	return fn
end



