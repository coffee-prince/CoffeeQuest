function defenseMove(enemy,ai,event,data)

	if(event == AI_INIT) then
		ai.customData.dir = 2

		local init_x = math.floor(ai.initPosX)
		local init_y = math.floor(ai.initPosY)

		print(init_x)
		if init_y == -288 then
			ai.customData.dir = 2
			return
		elseif init_y == -544 then
			ai.customData.dir = 4
			return
		elseif init_x == 208 then
			ai.customData.dir = 1
			return
		else
			ai.customData.dir = 3
			return
		end
    end

    if (event == 0) then -- 2초마다 실행되는 이벤트

		local x1 = 208
		local y1 = -288

		local x2 = 592
		local y2= -288

		local x3 = 592
		local y3 = -544

		local x4 = 208
		local y4 = -544


		local x = enemy.x
		local y = enemy.y

		if ai.Distance(x, y, x1, y1) < 10 then
			ai.customData.dir = 2
		end

		if ai.Distance(x, y, x2, y2) < 10 then
			ai.customData.dir = 3

			print(2)
		end

		if ai.Distance(x, y, x3, y3) < 10 then
			ai.customData.dir = 4

			print(3)
		end

		if ai.Distance(x, y, x4, y4) < 10 then
			ai.customData.dir = 1
			print(4)
		end


		local dir = ai.customData.dir

		if dir == 1 then
			ai.MoveToPosition(x1, y1)
		end

		if dir == 2 then
			ai.MoveToPosition(x2, y2)
		end

		if dir == 3 then
			ai.MoveToPosition(x3, y3)
		end

		if dir == 4 then
			ai.MoveToPosition(x4, y4)
		end

		Server.RunLater(function()

			local x = enemy.x
			local y = enemy.y

			if ai.Distance(x, y, x1, y1) < 10 then
				ai.customData.dir = 2
			end

			if ai.Distance(x, y, x2, y2) < 10 then
				ai.customData.dir = 3

				print(2)
			end

			if ai.Distance(x, y, x3, y3) < 10 then
				ai.customData.dir = 4

				print(3)
			end

			if ai.Distance(x, y, x4, y4) < 10 then
				ai.customData.dir = 1
				print(4)
			end


			local dir = ai.customData.dir

			if dir == 1 then
				ai.MoveToPosition(x1, y1)
			end

			if dir == 2 then
				ai.MoveToPosition(x2, y2)
			end

			if dir == 3 then
				ai.MoveToPosition(x3, y3)
			end

			if dir == 4 then
				ai.MoveToPosition(x4, y4)
			end
		end, 0.5)

		Server.RunLater(function()

			local x = enemy.x
			local y = enemy.y

			if ai.Distance(x, y, x1, y1) < 10 then
				ai.customData.dir = 2
			end

			if ai.Distance(x, y, x2, y2) < 10 then
				ai.customData.dir = 3

				print(2)
			end

			if ai.Distance(x, y, x3, y3) < 10 then
				ai.customData.dir = 4

				print(3)
			end

			if ai.Distance(x, y, x4, y4) < 10 then
				ai.customData.dir = 1
				print(4)
			end


			local dir = ai.customData.dir

			if dir == 1 then
				ai.MoveToPosition(x1, y1)
			end

			if dir == 2 then
				ai.MoveToPosition(x2, y2)
			end

			if dir == 3 then
				ai.MoveToPosition(x3, y3)
			end

			if dir == 4 then
				ai.MoveToPosition(x4, y4)
			end
		end, 1.5)

		Server.RunLater(function()

			local x = enemy.x
			local y = enemy.y

			if ai.Distance(x, y, x1, y1) < 10 then
				ai.customData.dir = 2
			end

			if ai.Distance(x, y, x2, y2) < 10 then
				ai.customData.dir = 3

				print(2)
			end

			if ai.Distance(x, y, x3, y3) < 10 then
				ai.customData.dir = 4

				print(3)
			end

			if ai.Distance(x, y, x4, y4) < 10 then
				ai.customData.dir = 1
				print(4)
			end


			local dir = ai.customData.dir

			if dir == 1 then
				ai.MoveToPosition(x1, y1)
			end

			if dir == 2 then
				ai.MoveToPosition(x2, y2)
			end

			if dir == 3 then
				ai.MoveToPosition(x3, y3)
			end

			if dir == 4 then
				ai.MoveToPosition(x4, y4)
			end
		end, 1.9)

    end

    if (event == 1) then -- 몬스터가 공격을 받을때마다 실행되는 이벤트
        --공격한 유닛이 없을경우 예외처리
    end

end

Server.SetMonsterAI(60, defenseMove)
Server.SetMonsterAI(61, defenseMove)
Server.SetMonsterAI(62, defenseMove)
