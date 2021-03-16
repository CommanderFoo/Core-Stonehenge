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
	Events.BroadcastToServer("enable_excavation_items", quest_complete)

	if(can_complete_quest) then
		Events.Broadcast("quest_item_complete", 2)
	end
end)

Events.Connect("can_collect_excavation_quest_items", function()
	can_complete_quest = true
end)

Events.Connect("excavation_quest_done", function()
	Events.Broadcast("set_weather_profile", "daytime rain")
end)