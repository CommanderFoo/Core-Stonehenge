local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local transition_loader = script:GetCustomProperty("transition_loader"):WaitForObject()
local loading = script:GetCustomProperty("loading"):WaitForObject()

local transition_time = script:GetCustomProperty("transition_time")

local transition_color = transition_loader:GetColor()
local loading_color = loading:GetColor()

local local_player = Game.GetLocalPlayer()

local transition_tween = nil

function Tick(dt)
	if(transition_tween ~= nil) then
		transition_tween:tween(dt)
	end
end

Task.Spawn(function()
	Events.BroadcastToServer("game_ready")
end, transition_time)

Events.Connect("start_game", function()
	Events.Broadcast("set_player_camera", "tent", 0)
	Events.Broadcast("show_tent_button")
	Events.Broadcast("set_weather_profile", "sunrise")
	Events.Broadcast("set_weather_profile", "daytime")

	transition_tween = YOOTIL.Tween:new(transition_time, {a = 1}, {a = 0})

	Events.Broadcast("show_dynamic_ui")
	Events.Broadcast("show_static_ui")

	transition_tween:on_complete(function()
		transition_loader.visibility = Visibility.FORCE_OFF

		Events.Broadcast("next_quest")

		Events.Broadcast("play_bird_sounds")

		transition_tween = nil

		-- @TODO: enable player depending on last game state
		-- First time player the player should be disabled from moving
		-- Letter should be in hand with an option to leave the tent
		-- So for now this is disabled until we get to the point where
		-- game state is saved

		--Events.BroadcastToServer("enable_player", local_player)
	end)

	transition_tween:on_change(function(v)
		transition_color.a = v.a
		loading_color.a = v.a

		transition_loader:SetColor(transition_color)
		loading:SetColor(loading_color)
	end)

	transition_tween:set_delay(transition_time)
end)