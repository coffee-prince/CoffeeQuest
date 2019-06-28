function MONEY_CHANGE(roomPlayer)
   local money = unit.gameMoney

   unit.FireEvent("MONEY_CHANGE", money)
end


Server.GetTopic("REQUEST_MONEY").Add(MONEY_CHANGE)
