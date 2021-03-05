local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local transition_loader = script:GetCustomProperty("transition_loader"):WaitForObject()
local loading = script:GetCustomProperty("loading"):WaitForObject()

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
end, 1)

Events.Connect("start_game", function()
	transition_tween = YOOTIL.Tween:new(2, {a = 1}, {a = 0})

	transition_tween:on_complete(function()
		transition_loader.visibility = Visibility.FORCE_OFF

		Events.Broadcast("play_bird_sounds")

		transition_tween = nil

		Events.BroadcastToServer("enable_player")
	end)

	transition_tween:on_change(function(v)
		transition_color.a = v.a
		loading_color.a = v.a

		transition_loader:SetColor(transition_color)
		loading:SetColor(loading_color)
	end)

	transition_tween:set_delay(2)
end)