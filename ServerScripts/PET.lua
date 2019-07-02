Server.GetTopic("PET_TAG").Add(function(pet_id)
		unit.UnregisterPet(1)
		unit.UnregisterPet(2)
		unit.UnregisterPet(3)

		unit.SpawnPet(pet_id, unit.x, unit.y, pet_id, 0)
end)

