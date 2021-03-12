local interactables = script:GetCustomProperty("interactables"):WaitForObject()

Events.ConnectForPlayer("hide_interaction_label", function(player, obj)
	obj:GetObject().isInteractable = false
	
	Events.Broadcast("disable_player", player)
end)

Events.ConnectForPlayer("show_interaction_label", function(player, obj)
	obj:GetObject().isInteractable = true
	
	Events.Broadcast("enable_player", player)
end)

Events.Connect("hide_all_interaction_labels", function()
	for k, i in pairs(interactables:FindDescendantsByType("Trigger")) do
		i.isInteractable = false
	end
end)

Events.Connect("show_all_interaction_labels", function()
	for k, i in pairs(interactables:FindDescendantsByType("Trigger")) do
		i.isInteractable = true
	end
end)