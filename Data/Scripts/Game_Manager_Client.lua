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

Events.Connect("start_game", function(quest_id)
	Events.Broadcast("show_static_ui")

	local_player.clientUserData.quest_id = quest_id

	if(quest_id <= 1) then
		Events.Broadcast("set_weather_profile", "sunrise", true)
	elseif(quest_id == 2) then
		Events.Broadcast("set_weather_profile", "daytime", true)
	elseif(quest_id == 3) then
		
	elseif(quest_id == 4) then
		Events.Broadcast("set_weather_profile", "daytime rain", true)

		Events.Broadcast("inventory_add", 3)
		Events.Broadcast("inventory_add", 4)
	elseif(quest_id == 5) then
		Events.Broadcast("set_weather_profile", "nighttime", true)
		Events.Broadcast("set_weather_rocks_wet", true)

		Events.Broadcast("inventory_add", 3)
		Events.Broadcast("inventory_add", 4)
		Events.Broadcast("inventory_add", 5)
		Events.Broadcast("inventory_add", 6)

		Events.Broadcast("ocular_use_color")
	elseif(quest_id >= 6) then
		Events.Broadcast("set_weather_profile", "nighttime", true)
		Events.Broadcast("set_weather_rocks_wet", true)

		Events.Broadcast("enable_all_beams")
		Events.Broadcast("enable_all_symbols")

		Events.Broadcast("energy_to_end_position")
		Events.Broadcast("open_up_cave", true)

		Events.Broadcast("disable_white_outline")
		Events.Broadcast("disable_red_outline")
		Events.Broadcast("disable_yellow_outline")
		Events.Broadcast("disable_blue_outline")
	end

	if(quest_id > 3) then
		Events.Broadcast("inventory_add", 11)
	end
	
	Events.Broadcast("check_collectables")
	
	transition_tween = YOOTIL.Tween:new(transition_time, {a = 1}, {a = 0})

	transition_tween:on_complete(function()
		if(quest_id == 2) then
			Events.Broadcast("show_ocular_waypoint")
		elseif(quest_id == 3) then
			Events.Broadcast("show_dig_waypoint")
		elseif(quest_id == 4) then
			Events.Broadcast("show_lily_waypoint")
		elseif(quest_id == 5) then
			--Events.Broadcast("enable_rock_outlines")
		end

		if(quest_id > 1) then
			Events.BroadcastToServer("enable_player", local_player)
			Events.Broadcast("show_inventory")
			Events.Broadcast("enable_collectables")
			Events.Broadcast("can_open_inventory", true)
			Events.Broadcast("can_open_collectables", true)
			Events.Broadcast("enable_raycast")
			
			if(quest_id == 2) then
				Events.Broadcast("inventory_add", 2)
			end

			if(quest_id > 2) then
				Events.Broadcast("enable_ocular_device_ui")
				Events.Broadcast("enable_ocular_device", true)
				Events.Broadcast("show_dig_glowing_flowers")
			end

			Events.Broadcast("stop_music")
		else
			Events.Broadcast("show_letter")
		end

		if(quest_id > 3) then
			Events.Broadcast("show_grove_glowing_flowers")
		end

		if(quest_id < 5) then
			Events.Broadcast("play_bird_sounds")
		end

		if(quest_id >= 6) then
			Events.Broadcast("show_cave_waypoint")
		end

		if(quest_id == 7) then
			Events.Broadcast("enable_portal_effects")
		end

		Events.Broadcast("next_quest", quest_id)
		Events.Broadcast("enable_misc_audio")

		--Events.Broadcast("charge_up_energy")
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