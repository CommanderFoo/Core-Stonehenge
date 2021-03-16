local quest_items = script:GetCustomProperty("quest_items"):WaitForObject()

Events.Connect("enable_tree_area_items", function(quest_complete)
	if(quest_complete) then
		quest_items.collision = Collision.INHERIT
	end
end)