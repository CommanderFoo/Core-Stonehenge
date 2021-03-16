local quest_items = script:GetCustomProperty("quest_items"):WaitForObject()

Events.Connect("enable_excavation_items", function(quest_complete)
	if(quest_complete) then
		quest_items.collision = Collision.INHERIT
	end
end)