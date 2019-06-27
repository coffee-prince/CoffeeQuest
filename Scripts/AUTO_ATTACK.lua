function AutoAttack()
    local player = Client.myPlayerUnit
    local target = nil

    local skillID = 0

    local ATTACK_SPEED = 200 / 100
	local HP_SPEED = 1

	local hpTime = 0
	local attackTime = 0

    function auto(dt)
		hpTime = hpTime + dt
		attackTime = attackTime + dt

		if hpTime > HP_SPEED then
			-- 서버에 뭐시기
			hpTime = 0
		end

		if attackTime < ATTACK_SPEED then
			return
		end

		attackTime = 0


        if target == nil or target.valid == false or target.dead == true then
            target = Client.field.FindNearUnit(player.x, player.y, 1000, 2)
        end

        if target == nil or target.valid == false or target.dead == true then
            return
        end

		player.UseSkill(skillID, Point(target.x - player.x, target.y - player.y))
    end


    Client.onTick.Add(auto)

	Client.GetTopic("REFRESH_ATTACK_SPEED").Add(function(data)
		ATTACK_SPEED = data / 100
	end)


	Auto = {}

	Auto.Start = function()
	   Client.onTick.Add(auto)
	end

	Auto.Stop = function()
	   Client.onTick.Remove(auto)
	end

	return Auto
end
