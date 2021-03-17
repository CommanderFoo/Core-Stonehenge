Events.Connect("can_use_catalysts", function()
	Events.BroadcastToServer("enable_catalyst_breakers")
end)