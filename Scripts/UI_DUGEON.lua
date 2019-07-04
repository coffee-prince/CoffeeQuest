

function DUNGEON_INIT ()

	local is_show = false

	local OFFSET_X_DUNGEON = 9
	local OFFSET_Y_DUNGEON = 113
	local WIDTH_DUNGEON = 461
	local HEIGHT_DUNGEON = 469

	local OFFSET_X_CLOSE = 437
	local OFFSET_Y_CLOSE = 126
	local WIDTH_CLOSE = 30
	local HEIGHT_CLOSE = 30

	local UI_DUNGEON = Image("Pictures/UI/dungeon.png", Rect(OFFSET_X_DUNGEON, OFFSET_Y_DUNGEON, WIDTH_DUNGEON, HEIGHT_DUNGEON))
	local UI_DUNGEON_CLOSE_BTN = Button("gfdgd", Rect(OFFSET_X_CLOSE, OFFSET_Y_CLOSE, WIDTH_CLOSE, HEIGHT_CLOSE))
	local UI_DUNGEON_CLOSE_IMAGE = Image("Pictures/UI/close.png", Rect(0, 0, WIDTH_CLOSE, HEIGHT_CLOSE))

	UI_DUNGEON_CLOSE_BTN.AddChild(UI_DUNGEON_CLOSE_IMAGE)
    UI_DUNGEON_CLOSE_BTN.SetOpacity(0)

	UI_DUNGEON.showOnTop = true
	UI_DUNGEON_CLOSE_BTN.showOnTop = true

	UI_DUNGEON.visible = false
	UI_DUNGEON_CLOSE_BTN.visible = false

	local OFFSET_X_BTN_0 = 317
	local OFFSET_Y_BTN_0 = 175
	local WIDTH_BTN_0 = 124
	local HEIGHT_BTN_0 = 47

	local OFFSET_X_BTN_1 = 34
	local OFFSET_Y_BTN_1 = 286
	local WIDTH_BTN_1 = 124
	local HEIGHT_BTN_1 = 47

	local OFFSET_X_BTN_2 = 34
	local OFFSET_Y_BTN_2 = 340
	local WIDTH_BTN_2 = 124
	local HEIGHT_BTN_2 = 47

	local OFFSET_X_BTN_3 = 177
	local OFFSET_Y_BTN_3 = 286
	local WIDTH_BTN_3 = 124
	local HEIGHT_BTN_3 = 47

	local OFFSET_X_BTN_4 = 177
	local OFFSET_Y_BTN_4 = 340
	local WIDTH_BTN_4 = 124
	local HEIGHT_BTN_4 = 47

	local OFFSET_X_BTN_5 = 319
	local OFFSET_Y_BTN_5 = 286
	local WIDTH_BTN_5 = 124
	local HEIGHT_BTN_5 = 47

	local OFFSET_X_BTN_6 = 319
	local OFFSET_Y_BTN_6 = 340
	local WIDTH_BTN_6 = 124
	local HEIGHT_BTN_6 = 47

	local OFFSET_X_BTN_7 = 34
	local OFFSET_Y_BTN_7 = 394
	local WIDTH_BTN_7 = 124
	local HEIGHT_BTN_7 = 47

	local OFFSET_X_BTN_8 = 177
	local OFFSET_Y_BTN_8 = 394
	local WIDTH_BTN_8 = 124
	local HEIGHT_BTN_8 = 47

	local OFFSET_X_BTN_9 = 319
	local OFFSET_Y_BTN_9 = 394
	local WIDTH_BTN_9 = 124
	local HEIGHT_BTN_9 = 47

	local buttons = {}
	buttons[0] = Button("", Rect(OFFSET_X_BTN_0, OFFSET_Y_BTN_0, WIDTH_BTN_0, HEIGHT_BTN_0))
	buttons[0].AddChild(Image("Pictures/UI/dungeon_button_0.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[0].SetOpacity(0)
	buttons[0].showOnTop = true

	buttons[1] = Button("", Rect(OFFSET_X_BTN_1, OFFSET_Y_BTN_1, WIDTH_BTN_1, HEIGHT_BTN_1))
	buttons[1].AddChild(Image("Pictures/UI/dungeon_button_1.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[1].SetOpacity(0)
	buttons[1].showOnTop = true

	buttons[2] = Button("", Rect(OFFSET_X_BTN_2, OFFSET_Y_BTN_2, WIDTH_BTN_2, HEIGHT_BTN_2))
	buttons[2].AddChild(Image("Pictures/UI/dungeon_button_1.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[2].SetOpacity(0)
	buttons[2].showOnTop = true

	buttons[3] = Button("", Rect(OFFSET_X_BTN_3, OFFSET_Y_BTN_3, WIDTH_BTN_3, HEIGHT_BTN_3))
	buttons[3].AddChild(Image("Pictures/UI/dungeon_button_2.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[3].SetOpacity(0)
	buttons[3].showOnTop = true

	buttons[4] = Button("", Rect(OFFSET_X_BTN_4, OFFSET_Y_BTN_4, WIDTH_BTN_4, HEIGHT_BTN_4))
	buttons[4].AddChild(Image("Pictures/UI/dungeon_button_2.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[4].SetOpacity(0)
	buttons[4].showOnTop = true

	buttons[5] = Button("", Rect(OFFSET_X_BTN_5, OFFSET_Y_BTN_5, WIDTH_BTN_5, HEIGHT_BTN_5))
	buttons[5].AddChild(Image("Pictures/UI/dungeon_button_3.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[5].SetOpacity(0)
	buttons[5].showOnTop = true

	buttons[6] = Button("", Rect(OFFSET_X_BTN_6, OFFSET_Y_BTN_6, WIDTH_BTN_6, HEIGHT_BTN_6))
	buttons[6].AddChild(Image("Pictures/UI/dungeon_button_3.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[6].SetOpacity(0)
	buttons[6].showOnTop = true

	buttons[7] = Button("", Rect(OFFSET_X_BTN_7, OFFSET_Y_BTN_7, WIDTH_BTN_7, HEIGHT_BTN_7))
	buttons[7].AddChild(Image("Pictures/UI/dungeon_button_1.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[7].SetOpacity(0)
	buttons[7].showOnTop = true

	buttons[8] = Button("", Rect(OFFSET_X_BTN_8, OFFSET_Y_BTN_8, WIDTH_BTN_8, HEIGHT_BTN_8))
	buttons[8].AddChild(Image("Pictures/UI/dungeon_button_2.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[8].SetOpacity(0)
	buttons[8].showOnTop = true

	buttons[9] = Button("", Rect(OFFSET_X_BTN_9, OFFSET_Y_BTN_9, WIDTH_BTN_9, HEIGHT_BTN_9))
	buttons[9].AddChild(Image("Pictures/UI/dungeon_button_3.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[9].SetOpacity(0)
	buttons[9].showOnTop = true

	for i = 0, 9 do
		buttons[i].visible = false
	end

	local texts = {}

	texts[10] = Text("파밍을 하고 싶다면 지하 던전!\n커피 재료를 수집하고 싶다면 보스를 공략하세요.", Rect(55-13, 184, 227+27, 31))
	texts[10].showOnTop = true
	texts[10].color = Color(0, 0, 0, 255)
	texts[10].textAlign = 4
	texts[10].textSize = 12




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






	local fn = {}

	fn.IsShow = function()
		return is_show
	end


	fn.Show = function()
		is_show = true
		UI_DUNGEON.visible = true
		UI_DUNGEON_CLOSE_BTN.visible = true
		for i = 0, 9 do
			buttons[i].visible = true
		end
	end

	fn.Hide = function()
		is_show = false
		UI_DUNGEON.visible = false
		UI_DUNGEON_CLOSE_BTN.visible = false
		for i = 0, 9 do
			buttons[i].visible = false
		end
	end

	UI_DUNGEON_CLOSE_BTN.onClick.Add(function()
		fn.Hide()
	end)


	return fn
end



