

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
	buttons[1].AddChild(Image("Pictures/UI/dungeon_button_ok.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[1].SetOpacity(0)
	buttons[1].showOnTop = true

	buttons[2] = Button("", Rect(OFFSET_X_BTN_2, OFFSET_Y_BTN_2, WIDTH_BTN_2, HEIGHT_BTN_2))
	buttons[2].AddChild(Image("Pictures/UI/dungeon_button_1.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[2].AddChild(Image("Pictures/UI/dungeon_button_ok.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[2].SetOpacity(0)
	buttons[2].showOnTop = true

	buttons[3] = Button("", Rect(OFFSET_X_BTN_3, OFFSET_Y_BTN_3, WIDTH_BTN_3, HEIGHT_BTN_3))
	buttons[3].AddChild(Image("Pictures/UI/dungeon_button_2.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[3].AddChild(Image("Pictures/UI/dungeon_button_ok.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[3].SetOpacity(0)
	buttons[3].showOnTop = true

	buttons[4] = Button("", Rect(OFFSET_X_BTN_4, OFFSET_Y_BTN_4, WIDTH_BTN_4, HEIGHT_BTN_4))
	buttons[4].AddChild(Image("Pictures/UI/dungeon_button_2.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[4].AddChild(Image("Pictures/UI/dungeon_button_ok.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[4].SetOpacity(0)
	buttons[4].showOnTop = true

	buttons[5] = Button("", Rect(OFFSET_X_BTN_5, OFFSET_Y_BTN_5, WIDTH_BTN_5, HEIGHT_BTN_5))
	buttons[5].AddChild(Image("Pictures/UI/dungeon_button_3.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[5].AddChild(Image("Pictures/UI/dungeon_button_ok.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[5].SetOpacity(0)
	buttons[5].showOnTop = true

	buttons[6] = Button("", Rect(OFFSET_X_BTN_6, OFFSET_Y_BTN_6, WIDTH_BTN_6, HEIGHT_BTN_6))
	buttons[6].AddChild(Image("Pictures/UI/dungeon_button_3.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[6].AddChild(Image("Pictures/UI/dungeon_button_ok.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[6].SetOpacity(0)
	buttons[6].showOnTop = true

	buttons[7] = Button("", Rect(OFFSET_X_BTN_7, OFFSET_Y_BTN_7, WIDTH_BTN_7, HEIGHT_BTN_7))
	buttons[7].AddChild(Image("Pictures/UI/dungeon_button_1.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[7].AddChild(Image("Pictures/UI/dungeon_button_ok.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[7].SetOpacity(0)
	buttons[7].showOnTop = true

	buttons[8] = Button("", Rect(OFFSET_X_BTN_8, OFFSET_Y_BTN_8, WIDTH_BTN_8, HEIGHT_BTN_8))
	buttons[8].AddChild(Image("Pictures/UI/dungeon_button_4.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[8].AddChild(Image("Pictures/UI/dungeon_button_ok.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[8].SetOpacity(0)
	buttons[8].showOnTop = true

	buttons[9] = Button("", Rect(OFFSET_X_BTN_9, OFFSET_Y_BTN_9, WIDTH_BTN_9, HEIGHT_BTN_9))
	buttons[9].AddChild(Image("Pictures/UI/dungeon_button_3.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[9].AddChild(Image("Pictures/UI/dungeon_button_ok.png", Rect(0, 0, WIDTH_BTN_0, HEIGHT_BTN_0)))
	buttons[9].SetOpacity(0)
	buttons[9].showOnTop = true

	for i = 0, 9 do
		buttons[i].visible = false
	end

	local texts = {}

	texts[10] = Text("파밍을 하고 싶다면 랜덤 던전 클릭!\n커피 재료를 수집하고 싶다면 보스를 클릭!", Rect(55-13, 184, 227+27, 31))
	texts[10].showOnTop = true
	texts[10].color = Color(0, 0, 0, 255)
	texts[10].textAlign = 4
	texts[10].textSize = 12
	texts[10].visible = false


	texts[0] = Text("랜덤 던전", Rect(32, 11, 60, 18))
	texts[0].showOnTop = true
	texts[0].color = Color(0, 0, 0, 255)
	texts[0].textAlign = 4
	texts[0].textSize = 14
	buttons[0].AddChild(texts[0])

	texts[1] = Text("Lv1. 탐탐", Rect(26, 11, 72, 18))
	texts[1].showOnTop = true
	texts[1].color = Color(0, 0, 0, 255)
	texts[1].textAlign = 4
	texts[1].textSize = 14
	buttons[1].AddChild(texts[1])

	texts[2] = Text("Lv4. 폴바셋", Rect(26, 11, 72, 18))
	texts[2].showOnTop = true
	texts[2].color = Color(0, 0, 0, 255)
	texts[2].textAlign = 4
	texts[2].textSize = 14
	buttons[2].AddChild(texts[2])

	texts[3] = Text("Lv2. 파스쿠찌",  Rect(26, 11, 82, 18))
	texts[3].showOnTop = true
	texts[3].color = Color(0, 0, 0, 255)
	texts[3].textAlign = 4
	texts[3].textSize = 14
	buttons[3].AddChild(texts[3])

	texts[4] = Text("Lv5. 할리스",  Rect(26, 11, 72, 18))
	texts[4].showOnTop = true
	texts[4].color = Color(0, 0, 0, 255)
	texts[4].textAlign = 4
	texts[4].textSize = 14
	buttons[4].AddChild(texts[4])

	texts[5] = Text("Lv3. 투썸",  Rect(26, 11, 72, 18))
	texts[5].showOnTop = true
	texts[5].color = Color(0, 0, 0, 255)
	texts[5].textAlign = 4
	texts[5].textSize = 14
	buttons[5].AddChild(texts[5])

	texts[6] = Text("Lv6. 이디야",  Rect(26, 11, 72, 18))
	texts[6].showOnTop = true
	texts[6].color = Color(0, 0, 0, 255)
	texts[6].textAlign = 4
	texts[6].textSize = 14
	buttons[6].AddChild(texts[6])

	texts[7] = Text("Lv7. 그루나루",  Rect(26, 11, 82, 18))
	texts[7].showOnTop = true
	texts[7].color = Color(0, 0, 0, 255)
	texts[7].textAlign = 4
	texts[7].textSize = 14
	buttons[7].AddChild(texts[7])

	texts[8] = Text("Boss 빽종원",  Rect(22, 11, 80, 18))
	texts[8].showOnTop = true
	texts[8].color = Color(255, 81, 98, 255)
	texts[8].textAlign = 4
	texts[8].textSize = 14
	buttons[8].AddChild(texts[8])

	texts[9] = Text("Lv8. 스벅이",  Rect(22, 11, 80, 18))
	texts[9].showOnTop = true
	texts[9].color = Color(0, 0, 0, 255)
	texts[9].textAlign = 4
	texts[9].textSize = 14
	buttons[9].AddChild(texts[9])


	for i = 1, 9 do
		--print(buttons[i].children)
		buttons[i].children[1].visible = false --.visible = false
		buttons[i].children[2].visible = false --.visible = false
	end



	local OFFSET_X_COFFEE_1 = 35
	local OFFSET_Y_COFFEE_1 = 521
	local WIDTH_COFFEE_1 = 124
	local HEIGHT_COFFEE_1 = 38

	local OFFSET_X_COFFEE_2 = 178
	local OFFSET_Y_COFFEE_2 = 521
	local WIDTH_COFFEE_2 = 124
	local HEIGHT_COFFEE_2 = 38

	local OFFSET_X_COFFEE_3 = 320
	local OFFSET_Y_COFFEE_3 = 521
	local WIDTH_COFFEE_3 = 124
	local HEIGHT_COFFEE_3 = 38


	local isBoss1 = false
	local isBoss2 = false
	local isBoss3 = false


	Client.GetTopic("KILL_BOSS_RESPONSE").Add(function(boss1, boss2, boss3, boss4, boss5, boss6, boss7, boss8, boss9)

		buttons[1].children[1].visible = (boss1 == 0)
		buttons[1].children[2].visible = (boss1 == 1)

		buttons[2].children[1].visible = (boss4 == 0)
		buttons[2].children[2].visible = (boss4 == 1)

		buttons[3].children[1].visible = (boss2 == 0)
		buttons[3].children[2].visible = (boss2 == 1)

		buttons[4].children[1].visible = (boss5 == 0)
		buttons[4].children[2].visible = (boss5 == 1)

		buttons[5].children[1].visible = (boss3 == 0)
		buttons[5].children[2].visible = (boss3 == 1)

		buttons[6].children[1].visible = (boss6 == 0)
		buttons[6].children[2].visible = (boss6 == 1)

		buttons[7].children[1].visible = (boss7 == 0)
		buttons[7].children[2].visible = (boss7 == 1)

		buttons[8].children[1].visible = (boss8 == 0)
		buttons[8].children[2].visible = (boss8 == 1)

		buttons[9].children[1].visible = (boss9 == 0)
		buttons[9].children[2].visible = (boss9 == 1)

		isBoss1 = (boss1 + boss4 + boss7 == 3)
		isBoss2 = (boss2 + boss5 == 2)
		isBoss3 = (boss3 + boss6 + boss9 == 3)

	end)



	local coffees = {}
	coffees[1] = Image("Pictures/UI/coffee_1.png", Rect(OFFSET_X_COFFEE_1, OFFSET_Y_COFFEE_1, WIDTH_COFFEE_1, HEIGHT_COFFEE_1))
	coffees[2] = Image("Pictures/UI/coffee_2.png", Rect(OFFSET_X_COFFEE_2, OFFSET_Y_COFFEE_2, WIDTH_COFFEE_2, HEIGHT_COFFEE_2))
	coffees[3] = Image("Pictures/UI/coffee_3.png", Rect(OFFSET_X_COFFEE_3, OFFSET_Y_COFFEE_3, WIDTH_COFFEE_3, HEIGHT_COFFEE_3))
	coffees[4] = Image("Pictures/UI/non_1.png", Rect(OFFSET_X_COFFEE_1, OFFSET_Y_COFFEE_1, WIDTH_COFFEE_1, HEIGHT_COFFEE_1))
	coffees[5] = Image("Pictures/UI/non_2.png", Rect(OFFSET_X_COFFEE_2, OFFSET_Y_COFFEE_2, WIDTH_COFFEE_2, HEIGHT_COFFEE_2))
	coffees[6] = Image("Pictures/UI/non_3.png", Rect(OFFSET_X_COFFEE_3, OFFSET_Y_COFFEE_3, WIDTH_COFFEE_3, HEIGHT_COFFEE_3))

	for i = 1, 6 do
		coffees[i].showOnTop = true
		coffees[i].visible = false
	end


	local maps = {}
	maps[0] = 0 -- 파밍 던전
	maps[1] = 35 -- 탐탐
	maps[2] = 53 -- 폴바셋
	maps[3] = 28 -- 골래미
	maps[4] = 55 -- 할리스
	maps[5] = 56 -- 눈탱이
	maps[6] = 51 -- 이디야
	maps[7] = 59 -- 그루나루
	maps[8] = 60 -- 빽종원
	maps[9] = 61 -- 스벅이



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


		if isBoss1 == true then coffees[1].visible = true else coffees[4].visible = true end
		if isBoss2 == true then coffees[2].visible = true else coffees[5].visible = true end
		if isBoss3 == true then coffees[3].visible = true else coffees[6].visible = true end

		texts[10].visible = true
	end

	fn.Hide = function()
		is_show = false
		UI_DUNGEON.visible = false
		UI_DUNGEON_CLOSE_BTN.visible = false
		for i = 0, 9 do
			buttons[i].visible = false
		end
		for i = 1, 6 do
			coffees[i].visible = false
		end
		texts[10].visible = false
	end



	UI_DUNGEON_CLOSE_BTN.onClick.Add(function()
		fn.Hide()
	end)

	buttons[0].onClick.Add(function()
		fn.Hide()

		local r = math.random(1, 100)

		if r <= 40 then
			Client.FireEvent("REQUEST_GO", 52)
			return
		end

		if r <= 70 then
			Client.FireEvent("REQUEST_GO", 57)
			return
		end

		if r <= 100 then
			Client.FireEvent("REQUEST_GO", 58)
			return
		end

	end)

	for i = 1, 9 do
		buttons[i].onClick.Add(function()
			Client.FireEvent("REQUEST_GO", maps[i])
			fn.Hide()
		end)
	end


	return fn
end



