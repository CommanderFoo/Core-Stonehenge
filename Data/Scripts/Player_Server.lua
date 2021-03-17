Game.playerJoinedEvent:Connect(function(player)
	disable_player(player)
	player:SetVisibility(false)
end)

function disable_player(player, stance)
	player.movementControlMode = MovementControlMode.NONE
	player.lookControlMode = LookControlMode.NONE
	player.maxJumpCount = 0
	player.isCrouchEnabled = false

	if(stance) then
		set_player_stance(player, stance)
	end
end

function enable_player(player, stance)
	player.movementControlMode = MovementControlMode.VIEW_RELATIVE
	player.lookControlMode = LookControlMode.RELATIVE
	player.maxJumpCount = 1
	player.isCrouchEnabled = true

	if(stance) then
		set_player_stance(player, stance)
	end
end

function set_player_stance(player, stance)
	player.animationStance = stance
end

Events.Connect("set_player_stance", set_player_stance)
Events.Connect("disable_player", disable_player)
Events.Connect("enable_player", enable_player)