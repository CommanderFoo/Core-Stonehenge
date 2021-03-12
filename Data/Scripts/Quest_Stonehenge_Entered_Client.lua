local trigger = script:GetCustomProperty("trigger"):WaitForObject()

trigger.beginOverlapEvent:Connect(function(t, p)
	Events.Broadcast("quest_item_complete", 1)
end)