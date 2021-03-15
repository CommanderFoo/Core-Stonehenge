local trigger = script:GetCustomProperty("trigger"):WaitForObject()
local quest_items = script:GetCustomProperty("quest_items"):WaitForObject()
local collectable_items = script:GetCustomProperty("collectable_items"):WaitForObject()

Events.Connect("enable_excavation_items", function(show_quest_items)
	collectable_items.visibility = Visibility.INHERIT
	collectable_items.collision = Collision.INHERIT

	if(show_quest_items) then
		quest_items.visibility = Visibility.INHERIT
		quest_items.collision = Collision.INHERIT
	end
end)

Events.Connect("disable_excavation_items", function(show_quest_items)
	collectable_items.visibility = Visibility.INHERIT
	collectable_items.collision = Collision.INHERIT

	quest_items.visibility = Visibility.FORCE_OFF
	quest_items.collision = Collision.FORCE_OFF
end)