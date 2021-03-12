local letter_button = script:GetCustomProperty("letter_button"):WaitForObject()
local letter_hover_color = script:GetCustomProperty("letter_hover_color")
local letter_unhover_color = script:GetCustomProperty("letter_unhover_color")
local letter = script:GetCustomProperty("letter"):WaitForObject()

local local_player = Game.GetLocalPlayer()

letter_button.hoveredEvent:Connect(function()
	letter_button:FindDescendantByName("Background"):SetColor(letter_hover_color)
end)

letter_button.unhoveredEvent:Connect(function()
	letter_button:FindDescendantByName("Background"):SetColor(letter_unhover_color)
end)

letter_button.clickedEvent:Connect(function()
	letter.visibility = Visibility.FORCE_OFF
	Events.BroadcastToServer("enable_player", local_player)
	Events.Broadcast("hide_cursor")
	Events.Broadcast("show_inventory")
	Events.Broadcast("next_quest")
end)

Events.Connect("show_letter", function()
	Events.Broadcast("set_weather_profile", "sunrise")
	Events.Broadcast("set_weather_profile", "daytime")
	Events.Broadcast("show_cursor")
	UI.SetCanCursorInteractWithUI(true)
	letter.visibility = Visibility.FORCE_ON

	Task.Wait(1)

	letter_button.visibility = Visibility.FORCE_ON
end)

