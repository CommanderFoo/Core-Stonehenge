local portal = script:GetCustomProperty("portal"):WaitForObject()

Events.Connect("enable_portal", function()
	portal.isInteractable = true
end)

Events.Connect("disable_portal", function(player)
	portal.isInteractable = false
	
	Events.Broadcast("submit_fastest_time", player:GetResource("finished"))
	player:SetResource("finished", 1)
	Events.Broadcast("stop_timer")
end)

Events.ConnectForPlayer("reload_game", function(player)
	player:TransferToGame("923e7b/stonehenge")
end)