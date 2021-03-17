Events.ConnectForPlayer("save", function(player, key, val)
	player:SetResource(key, val)
end)