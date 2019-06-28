function AutoAttack()
    local player = Client.myPlayerUnit
    local target = nil
	local prev_target = target

    local skillID = 0

    local ATTACK_SPEED = 200 / 100
	local HP_SPEED = 1

	local hpTime = 0
	local attackTime = 0

	local prev_x = player.x
	local prev_y = player.y


    function auto(dt)
		hpTime = hpTime + dt
		attackTime = attackTime + dt

		if hpTime > HP_SPEED then

			hpTime = 0
		end

		if attackTime < ATTACK_SPEED then
			return
		end

		attackTime = 0


        if prev_X ~= player.x or prev_y ~= player.y or target == nil or target.valid == false or target.dead == true then
            target = Client.field.FindNearUnit(player.x, player.y, 32 * 6, 2)

			prev_x = player.x
			prev_y = player.y
        end

        if target == nil or target.valid == false or target.dead == true then
            return
        end

		if target ~= prev_target then
			prev_target = target

			--fireParticleUnitID(0, 0, target)

		end

		--target.Say("<color=#000000>적이다! 돌진!</color>")
		--player.useSkill(1, Point(target.x, target.y))


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



function fireParticleUnitID(posx,posy,u)
	local p = ParticleSystem();
	p.AttachToUnit(Point(posx,posy),u)
	p.duration  = 0

	p.startSize = 25
	p.SetMaterialTexture("Pictures/target.png","Pictures/target.png")


end
