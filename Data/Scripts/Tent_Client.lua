local leave_tent_button = script:GetCustomProperty("leave_tent_button"):WaitForObject()
local leave_tent_hover_color = script:GetCustomProperty("leave_tent_hover_color")
local leave_tent_unhover_color = script:GetCustomProperty("leave_tent_unhover_color")

local spawn_pos = script:GetCustomProperty("spawn_pos")
local spawn_rot = script:GetCustomProperty("spawn_rot")
local move_to_spawn = script:GetCustomProperty("move_to_spawn")

local local_player = Game.GetLocalPlayer()

leave_tent_button.hoveredEvent:Connect(function()
	leave_tent_button:FindDescendantByName("Background"):SetColor(leave_tent_hover_color)
end)

leave_tent_button.unhoveredEvent:Connect(function()
	leave_tent_button:FindDescendantByName("Background"):SetColor(leave_tent_unhover_color)
end)

leave_tent_button.clickedEvent:Connect(function()
	UI.SetCanCursorInteractWithUI(false)
	leave_tent_button.visibility = Visibility.FORCE_OFF

	if(move_to_spawn) then
		Events.Broadcast("move_spawn", spawn_pos, spawn_rot)
	end

	Events.BroadcastToServer("enable_player", local_player)
	Events.Broadcast("clear_player_camera", 0.5)
	Events.Broadcast("hide_cursor")
	Events.Broadcast("enable_raycast")
end)

Events.Connect("show_tent_button", function()
	Events.Broadcast("disable_raycast")
	Events.Broadcast("show_cursor")
	UI.SetCanCursorInteractWithUI(true)
	leave_tent_button.visibility = Visibility.FORCE_ON
end)