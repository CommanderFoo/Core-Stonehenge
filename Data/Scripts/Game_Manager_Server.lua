function load_player_data(player)
	local data = Storage.GetPlayerData(player)

	player:SetResource("has_save", data.has_save or 0)
end

Game.playerJoinedEvent:Connect(function(player)
	load_player_data(player)
end)

Events.ConnectForPlayer("game_ready", function(player)
	Events.BroadcastToPlayer(player, "transition_to_menu")
end)

Events.ConnectForPlayer("load_game", function(player)
	Events.BroadcastToPlayer(player, "start_game")
end)