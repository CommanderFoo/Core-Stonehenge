Game.playerJoinedEvent:Connect(function(player)
	disable_player(player, true)
	--set_player_stance(player, "unarmed_sit_ground_crossed")

	player:SetVisibility(false)

end)

function disable_player(player, allow_camera)
	player.movementControlMode = MovementControlMode.NONE

	if(not allow_camera) then
		player.lookControlMode = LookControlMode.NONE
	end

	player.maxJumpCount = 0
end

function enable_player(player)
	player.movementControlMode = MovementControlMode.VIEW_RELATIVE
	player.lookControlMode = LookControlMode.RELATIVE
	player.maxJumpCount = 1
end

function set_player_stance(player, stance)
	player.animationStance = stance
end


Events.Connect("set_player_stance", set_player_stance)
Events.Connect("disable_player", disable_player)
Events.Connect("enable_player", enable_player)