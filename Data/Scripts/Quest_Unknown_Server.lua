local portal = script:GetCustomProperty("portal"):WaitForObject()

Events.Connect("enable_portal", function()
	portal.isInteractable = true
end)

Events.Connect("disable_portal", function()
	portal.isInteractable = false
end)

Events.ConnectForPlayer("reload_game", function(player)
	--player:TransferToGame(...)
	print("Reload game by transferring")
end)