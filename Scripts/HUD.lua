function HUD_Initialize()
    Client.ShowTopUI(false)

    local WIDTH_BACKGROUND = 337
    local HEIGHT_BACKGROUND = 113

    local OFFSET_X_HP = 136
    local OFFSET_Y_HP = 60
    local WIDTH_HP = 177
    local HEIGHT_HP = 29

    local OFFSET_X_NAME = 105
    local OFFSET_Y_NAME = 24
    local WIDTH_NAME = 120
    local HEIGHT_NAME = 27

    local OFFSET_X_PROFILE = 20
    local OFFSET_Y_PROFILE = 20
    local WIDTH_PROFILE = 71
    local HEIGHT_PROFILE = 71

    local OFFSET_X_MONEY = 345
    local OFFSET_Y_MONEY = 14
    local WIDTH_MONEY = 81
    local HEIGHT_MONEY = 28

    local OFFSET_X_MONEY_TEXT = 371
    local OFFSET_Y_MONEY_TEXT = 18
    local WIDTH_MONEY_TEXT = 47
    local HEIGHT_MONEY_TEXT = 18

    local OFFSET_X_BOOK = 345
    local OFFSET_Y_BOOK = 58
    local WIDTH_BOOK = 52
    local HEIGHT_BOOK = 52

    local OFFSET_X_PASSIVE = 407
    local OFFSET_Y_PASSIVE = 58
    local WIDTH_PASSIVE = 52
    local HEIGHT_PASSIVE = 52

    local HUD_background = Image("Pictures/HUD/background.png", Rect(0, 0, WIDTH_BACKGROUND, HEIGHT_BACKGROUND))
    local HUD_hp = Image("Pictures/HUD/hp.png", Rect(OFFSET_X_HP, OFFSET_Y_HP, WIDTH_HP, HEIGHT_HP))
    local HUD_profile_button = Button("", Rect(OFFSET_X_PROFILE, OFFSET_Y_PROFILE, WIDTH_PROFILE, HEIGHT_PROFILE))

    local profile_img = Image("Pictures/HUD/profile.png", Rect(0, 0, WIDTH_PROFILE, HEIGHT_PROFILE))
    HUD_profile_button.AddChild(profile_img)

    local HUD_money = Image("Pictures/HUD/money.png", Rect(OFFSET_X_MONEY, OFFSET_Y_MONEY, WIDTH_MONEY, HEIGHT_MONEY))

    local HUD_book_button = Button("", Rect(OFFSET_X_BOOK, OFFSET_Y_BOOK, WIDTH_BOOK, HEIGHT_BOOK))
    local book_img = Image("Pictures/HUD/book.png", Rect(0, 0, WIDTH_BOOK, HEIGHT_BOOK))
    HUD_book_button.AddChild(book_img)
    HUD_book_button.SetOpacity(0)

    local HUD_passive_button = Button("", Rect(OFFSET_X_PASSIVE, OFFSET_Y_PASSIVE, WIDTH_PASSIVE, HEIGHT_PASSIVE))
    local passive_img = Image("Pictures/HUD/passive.png", Rect(0, 0, WIDTH_PASSIVE, HEIGHT_PASSIVE))
    HUD_passive_button.AddChild(passive_img)
    HUD_passive_button.SetOpacity(0)

    local name_txt = Text(Client.myPlayerUnit.name, Rect(OFFSET_X_NAME, OFFSET_Y_NAME, WIDTH_NAME, HEIGHT_NAME))
    local hp_txt = Text(" ", Rect(OFFSET_X_HP, OFFSET_Y_HP, WIDTH_HP, HEIGHT_HP))
    local money_txt = Text(" ", Rect(OFFSET_X_MONEY_TEXT, OFFSET_Y_MONEY_TEXT, WIDTH_MONEY_TEXT, HEIGHT_MONEY_TEXT))
    name_txt.textSize = 21
    name_txt.textAlign = 0   -- 왼쪽상단정렬
    hp_txt.textAlign = 4     -- 중앙정렬
    money_txt.textAlign = 5  -- 오른쪽중앙정렬
    money_txt.color = Color(255, 134, 81, 255)

	local OFFSET_X_DASH = 0
	local OFFSET_Y_DASH = 0
	local WIDTH_DASH = 80
	local HEIGHT_DASH = 80

	local dash_button = Button("", Rect(OFFSET_X_DASH, OFFSET_Y_DASH, WIDTH_DASH, HEIGHT_DASH))
	local dash_button_image = Image("Pictures/HUD/dash.png", Rect(0, 0, WIDTH_DASH, HEIGHT_DASH))
	local dash_image = Image("Pictures/HUD/dash_cool.png", Rect(0, 0, WIDTH_DASH, HEIGHT_DASH))

	dash_button.addChild(dash_image)
	dash_button.showOnTop = true
	dash_image.showOnTop = true

    HUD_background.showOnTop = true
    HUD_hp.showOnTop = true
    HUD_profile_button.showOnTop = true
    name_txt.showOnTop = true
    hp_txt.showOnTop = true
    money_txt.showOnTop = true


	Client.FireEvent("REFRESH_STAT", 1)


    local current_hp_width = WIDTH_HP
    local prev_hp_width = current_hp_width

    local player_money = "0"

    function hp_update(deltaTime)

		if Client.myPlayerUnit.dead == true then
			Client.FireEvent("REFRESH_STAT", 1)
		end

        local max_hp = Client.myPlayerUnit.maxHP

        local current_hp = Client.myPlayerUnit.hp

        current_hp_width = WIDTH_HP * (current_hp / max_hp)

        if current_hp_width < prev_hp_width then
            current_hp_width = prev_hp_width - (prev_hp_width - current_hp_width) * 0.05
        end

        HUD_hp.rect = Rect(OFFSET_X_HP, OFFSET_Y_HP, current_hp_width, HEIGHT_HP)

        prev_hp_width = current_hp_width

        hp_txt.text = current_hp .. " / " .. max_hp
        money_txt.text = player_money

		Client.FireEvent("REQUEST_MONEY")
    end



    HUD_profile_button.onClick.Add(function()
		if DUNGEON.IsShow() == true then DUNGEON.Hide() end
		if PASSIVE.IsShow() == true then PASSIVE.Hide() end

        if PROFILE.IsShow() == false then
			PROFILE.Show()
		else
			PROFILE.Hide()
		end
    end)

    Client.GetTopic("MONEY_CHANGE").Add(function(money)
        player_money = money
       --- Client.myPlayerUnit.Say("<color=#000000>" .. money .."</color>")
    end)

    local isShowBook = false

    Client.FireEvent("REQUEST_MONEY")

    HUD_book_button.onClick.Add(function()
		if PASSIVE.IsShow() == true then PASSIVE.Hide() end
		if PROFILE.IsShow() == true then PROFILE.Hide() end

        if DUNGEON.IsShow() == false then
			DUNGEON.Show()
		else
			DUNGEON.Hide()
		end
    end)

    HUD_passive_button.onClick.Add(function()
		if DUNGEON.IsShow() == true then DUNGEON.Hide() end
		if PROFILE.IsShow() == true then PROFILE.Hide() end

        if PASSIVE.IsShow() == false then
			PASSIVE.Show()
		else
			PASSIVE.Hide()
		end
    end)

    Client.onTick.Add(hp_update, 30)

end
