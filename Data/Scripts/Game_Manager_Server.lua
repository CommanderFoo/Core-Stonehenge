function load_player_data(player)
	local data = Storage.GetPlayerData(player)

	player:SetResource("has_save", data.has_save or 0)
end

function disable_player(player)
	player.movementControlMode = MovementControlMode.NONE
	player.lookControlMode = LookControlMode.NONE
	player.maxJumpCount = 0
end

function enable_player(player)
	player.movementControlMode = MovementControlMode.VIEW_RELATIVE
	player.lookControlMode = LookControlMode.RELATIVE
	player.maxJumpCount = 1
end

Game.playerJoinedEvent:Connect(function(player)
	load_player_data(player)
	disable_player(player)	
end)

Events.ConnectForPlayer("game_ready", function(player)
	Events.BroadcastToPlayer(player, "transition_to_menu")
end)

Events.ConnectForPlayer("load_game", function(player)
	Events.BroadcastToPlayer(player, "start_game")
end)

Events.ConnectForPlayer("enable_player", enable_player)