local trigger = script:GetCustomProperty("trigger"):WaitForObject()
local quest_trigger = script:GetCustomProperty("quest_trigger"):WaitForObject()
local impact = script:GetCustomProperty("impact"):WaitForObject()
local rocks = script:GetCustomProperty("rocks"):WaitForObject()
local dust = script:GetCustomProperty("dust"):WaitForObject()

local can_complete_quest = false
local quest_complete = false

quest_trigger.beginOverlapEvent:Connect(function(t, p)
	if(p:IsA("Player")) then
		if(can_complete_quest and not quest_complete) then
			Events.Broadcast("quest_item_complete", 1)
		end
	end
end)

trigger.interactedEvent:Connect(function()
	Events.BroadcastToServer("enable_tree_area_items", can_complete_quest)

	if(can_complete_quest and not quest_complete) then
		quest_complete = true
		Events.Broadcast("quest_item_complete", 2)
	end
end)

Events.Connect("can_collect_tree_area_quest_items", function()
	can_complete_quest = true
	Events.Broadcast("show_lily_waypoint")
end)

Events.Connect("tree_area_quest_complete", function()
	Events.Broadcast("set_weather_profile", "nighttime")
	Events.Broadcast("set_weather_rocks_wet", true)
	Events.Broadcast("ocular_use_color")
	Events.Broadcast("clear_waypoint")
end)

Events.Connect("lily_area_play_vfx", function()
	impact:Play()
	rocks:Play()
	dust:Play()
end)