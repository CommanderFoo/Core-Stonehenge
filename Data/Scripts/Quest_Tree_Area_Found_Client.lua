local trigger = script:GetCustomProperty("trigger"):WaitForObject()
local quest_trigger = script:GetCustomProperty("quest_trigger"):WaitForObject()

local can_complete_quest = false
local quest_complete = false

quest_trigger.beginOverlapEvent:Connect(function(t, p)
	if(p:IsA("Player")) then
		if(can_complete_quest) then
			if(not quest_complete) then
				Events.Broadcast("quest_item_complete", 1)
				quest_complete = true
			end
		end
	end
end)

trigger.interactedEvent:Connect(function()
	Events.BroadcastToServer("enable_tree_area_items", quest_complete)

	if(can_complete_quest) then
		Events.Broadcast("quest_item_complete", 2)
	end
end)

Events.Connect("can_collect_tree_area_quest_items", function()
	can_complete_quest = true
end)

Events.Connect("tree_area_quest_complete", function()
	Events.Broadcast("set_weather_profile", "nighttime")
	Events.Broadcast("set_weather_rocks_wet", true)
	Events.Broadcast("enable_ocular_device", true)
	Events.Broadcast("add_notification", "The Ocular Pulse Device is fully charged.  Using it will reveal hidden items.")
end)