Server.SetPetAI(
        1, --펫이될 캐릭터 id
        function(pet,ai,event)


				pet.Say("최고 존엄 김홍일 PD!")

				ai.SetFollowMaster(true,10,400)
                --2초마다 실행
                if(event == AI_UPDATE) then
                        --가장 가까운 적유닛 을 타깃으로 지정
                        ai.SetNearTarget(2,200)

                        --펫의 타깃이 존재한다면 스킬 사용
                        --스킬은 기본적으로 타깃을 향해 발사됨
                        if(ai.GetTargetUnit() ~=nil) then
							ai.UseSkill(0)
                        end


                end

        end
)
