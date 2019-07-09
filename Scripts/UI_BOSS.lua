

function BOSS_INIT ()

	local is_show = false

	local OFFSET_X_ICON = 20
	local OFFSET_Y_ICON = 124
	local WIDTH_ICON = 36
	local HEIGHT_ICON = 36

	local OFFSET_X_BAR = 35
	local OFFSET_Y_BAR = 129
	local WIDTH_BAR = 425
	local HEIGHT_BAR = 26

	local OFFSET_X_HP = 38
	local OFFSET_Y_HP = 132
	local WIDTH_HP = 419
	local HEIGHT_HP = 20

	local UI_BAR = Image("Pictures/HUD/boss_bar.png", Rect(OFFSET_X_BAR, OFFSET_Y_BAR, WIDTH_BAR, HEIGHT_BAR))
	local UI_HP = Image("Pictures/HUD/boss_hp.png", Rect(OFFSET_X_HP, OFFSET_Y_HP, WIDTH_HP, HEIGHT_HP))
	local UI_ICON = Image("Pictures/HUD/boss_icon.png", Rect(OFFSET_X_ICON, OFFSET_Y_ICON, WIDTH_ICON, HEIGHT_ICON))
	local hp_txt = Text("sd ", Rect(OFFSET_X_HP, OFFSET_Y_HP, WIDTH_HP, HEIGHT_HP))
	hp_txt.textAlign = 4     -- Áß¾ÓÁ¤·Ä
	hp_txt.color = Color(0, 0, 0, 255)

	UI_BAR.showOnTop = true
	UI_HP.showOnTop = true
	UI_ICON.showOnTop = true
	hp_txt.showOnTop = true

	UI_BAR.visible = false
	UI_HP.visible = false
	UI_ICON.visible = false
	hp_txt.visible = false


	local boss = nil

	local current_hp_width = WIDTH_HP
    local prev_hp_width = current_hp_width

	function boss_update(deltaTime)
		if boss == nil then return end

		local max_hp = boss.maxHP

        local current_hp = boss.hp


		current_hp_width = WIDTH_HP * (current_hp / max_hp)

		if current_hp_width < prev_hp_width then
            current_hp_width = prev_hp_width - (prev_hp_width - current_hp_width) * 0.05
        end

        UI_HP.rect = Rect(OFFSET_X_HP, OFFSET_Y_HP, current_hp_width, HEIGHT_HP)
		hp_txt.text = current_hp .. " / " .. max_hp
        prev_hp_width = current_hp_width
	end


	local fn = {}
	fn.Show = function()

		boss = Client.field.FindNearUnit(0, 0, 1000000, 2)

		if boss == nil then return end


		UI_BAR.visible = true
		UI_HP.visible = true
		UI_ICON.visible = true
		hp_txt.visible = true


		Client.onTick.Add(boss_update)
	end

	fn.Hide = function()
		UI_BAR.visible = false
		UI_HP.visible = false
		UI_ICON.visible = false
		hp_txt.visible = false

		boss = nil

		Client.onTick.Remove(boss_update)
	end


	return fn
end



