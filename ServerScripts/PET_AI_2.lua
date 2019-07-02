Server.SetPetAI(
        2, --펫이될 캐릭터 id
        function(pet,ai,event)



				ai.SetFollowMaster(true,32* 3,32*6)
                --2초마다 실행
                if(event == AI_UPDATE) then
                        --가장 가까운 적유닛 을 타깃으로 지정
					master = ai.GetMasterUnit()



                    ai.UseSkill(11, Point(master.x - pet.x, master.y - pet.y))
                end

        end
)
