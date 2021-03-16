local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local transition_loader = script:GetCustomProperty("transition_loader"):WaitForObject()
local loading = script:GetCustomProperty("loading"):WaitForObject()
local debug = script:GetCustomProperty("debug")

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
	Events.Broadcast("show_static_ui")

	-- @TODO: Debug remove when done

	-- Use the "debug" property instead now.

	if(debug) then
		transition_time = 0
		
		Events.BroadcastToServer("enable_player", local_player, "unarmed_stance")
		Events.Broadcast("show_inventory")
		Events.Broadcast("show_collectables")
		Events.Broadcast("can_open_inventory", true)
		Events.Broadcast("can_open_collectables", true)
		Events.Broadcast("enable_raycast")
		Events.Broadcast("set_weather_profile", "daytime")

		Events.Broadcast("inventory_add", 3)
		Events.Broadcast("inventory_add", 4)
		Events.Broadcast("inventory_add", 5)
		Events.Broadcast("inventory_add", 6)

	else
		Events.Broadcast("set_weather_profile", "sunrise")
	end
	
	transition_tween = YOOTIL.Tween:new(transition_time, {a = 1}, {a = 0})

	transition_tween:on_complete(function()

		-- @TODO: Enable on public release

		if(not debug) then
			Events.Broadcast("show_letter")
		end

		transition_loader.visibility = Visibility.FORCE_OFF		
		transition_tween = nil
	end)

	transition_tween:on_change(function(v)
		transition_color.a = v.a
		loading_color.a = v.a

		transition_loader:SetColor(transition_color)
		loading:SetColor(loading_color)
	end)

	transition_tween:set_delay(transition_time)
end)