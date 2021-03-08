Game.playerJoinedEvent:Connect(function(player)
	disable_player(player)
	player:SetVisibility(false)
end)

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

Events.Connect("disable_player", disable_player)
Events.Connect("enable_player", enable_player)