local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local profiles = script:GetCustomProperty("profiles"):WaitForObject()

local main_rain_volume = script:GetCustomProperty("main_rain_volume"):WaitForObject()
local main_rain_sound = script:GetCustomProperty("main_rain_sound"):WaitForObject()
local main_thunder_sound = script:GetCustomProperty("main_thunder_sound"):WaitForObject()
local main_rain_density = script:GetCustomProperty("main_rain_density")

local sky_dome = script:GetCustomProperty("sky_dome"):WaitForObject()
local sky_light = script:GetCustomProperty("sky_light"):WaitForObject()
local sun_light = script:GetCustomProperty("sun_light"):WaitForObject()
local star_dome = script:GetCustomProperty("star_dome"):WaitForObject()

local sarsen_rocks = script:GetCustomProperty("sarsen_rocks"):WaitForObject()
local bluestone_rocks = script:GetCustomProperty("bluestone_rocks"):WaitForObject()
local sarsen_rocks_wet = script:GetCustomProperty("sarsen_rocks_wet"):WaitForObject()
local bluestone_rocks_wet = script:GetCustomProperty("bluestone_rocks_wet"):WaitForObject()

local thunder_task = nil

local current_rain_sound = main_rain_sound
local current_rain_volume = main_rain_volume
local current_thunder_sound = main_thunder_sound
local current_rain_density = main_rain_density

local local_player = Game.GetLocalPlayer()

local current_profile = nil
local tween = nil

function make_it_thunder()
	local can_thunder = math.random(1, 100)

	if(can_thunder > 50) then
		current_thunder_sound:Play()
	end
end


function get_weather_profile(profile)
	local children = profiles:GetChildren()

	for i, c in ipairs(children) do
		if(string.lower(c.name) == profile) then
			return c
		end
	end
end

-- @TODO:  Lightning strikes hitting the ground at random spots
-- @TODO:  Switch rocks to wet if raining

function set_weather_profile(profile)
	local data = get_weather_profile(profile)

	current_profile = data

	if(not data:GetCustomProperty("tween")) then
		sky_dome:SetSmartProperty("Overall Tint", data:GetCustomProperty("sky_dome_color"))
		sky_dome:SetSmartProperty("Brightness", data:GetCustomProperty("sky_dome_brightness"))

		sky_light:SetSmartProperty("Tint Color", data:GetCustomProperty("sky_light_color"))
		sky_light:SetSmartProperty("Intensity", data:GetCustomProperty("sky_light_intensity"))

		sun_light:SetSmartProperty("Light Color", data:GetCustomProperty("sun_light_color"))
		sun_light:SetSmartProperty("Intensity", data:GetCustomProperty("sun_light_intensity"))

		star_dome:SetSmartProperty("Space Tint", data:GetCustomProperty("star_dome_color"))
		star_dome:SetSmartProperty("Star Visibility", data:GetCustomProperty("star_dome_visibility"))

		if(YOOTIL.Vector3.is_zero(data:GetCustomProperty("sun_light_start_rotation"))) then
			if(not YOOTIL.Vector3.is_zero(data:GetCustomProperty("sun_light_end_rotation"))) then
				sun_light:SetWorldRotation(data:GetCustomProperty("sun_light_end_rotation"))
			end
		end

		if(data:GetCustomProperty("rain")) then
			current_rain_volume:SetSmartProperty("Density", data:GetCustomProperty("rain_density"))
			current_rain_volume:Play()
			current_rain_sound:Play()
		else
			current_rain_volume:SetSmartProperty("Density", 0)
			current_rain_volume:Stop()
			current_rain_sound:Stop()
		end

		if(data:GetCustomProperty("thunder")) then
			Task.Spawn(function()
				current_thunder_sound:Play()
		
				thunder_task = Task.Spawn(make_it_thunder, 6)
		
				thunder_task.repeatCount = -1
				thunder_task.repeatInterval = 8
			end, 1)
		else
			current_thunder_sound:Stop()

			if(thunder_task ~= nil) then
				thunder_task:Cancel()
				thunder_task = nil
			end
		end
	else
		local start_sky_dome_color = sky_dome:GetSmartProperty("Overall Tint")
		local end_sky_dome_color = data:GetCustomProperty("sky_dome_color")

		local start_sky_light_color = sky_light:GetSmartProperty("Tint Color")
		local end_sky_light_color = data:GetCustomProperty("sky_light_color")

		local start_sun_light_color = sun_light:GetSmartProperty("Light Color")
		local end_sun_light_color = data:GetCustomProperty("sun_light_color")

		local start_star_dome_color = star_dome:GetSmartProperty("Space Tint")
		local end_star_dome_color = data:GetCustomProperty("star_dome_color")

		local start_sun_light_rotation = sun_light:GetWorldRotation()

		if(not YOOTIL.Vector3.is_zero(data:GetCustomProperty("sun_light_start_rotation"))) then
			start_sun_light_rotation = data:GetCustomProperty("sun_light_start_rotation")
		end

		local end_sun_light_rotation = data:GetCustomProperty("sun_light_end_rotation")

		local start_rain_density = current_rain_volume:GetSmartProperty("Density")
		local end_rain_density = data:GetCustomProperty("rain_density")

		tween = YOOTIL.Tween:new(data:GetCustomProperty("tween_duration"), {
			
			sky_dome_color_r = start_sky_dome_color.r,
			sky_dome_color_g = start_sky_dome_color.g,
			sky_dome_color_b = start_sky_dome_color.b,
			sky_dome_brightness = sky_dome:GetSmartProperty("Brightness"),

			sky_light_color_r = start_sky_light_color.r,
			sky_light_color_g = start_sky_light_color.g,
			sky_light_color_b = start_sky_light_color.b,
			sky_light_intensity = sky_light:GetSmartProperty("Intensity"),

			sun_light_color_r = start_sun_light_color.r,
			sun_light_color_g = start_sun_light_color.g,
			sun_light_color_b = start_sun_light_color.b,
			sun_light_intensity = sun_light:GetSmartProperty("Intensity"),

			sun_light_rotation_x = start_sun_light_rotation.x,
			sun_light_rotation_y = start_sun_light_rotation.y,
			sun_light_rotation_z = start_sun_light_rotation.z,

			star_dome_color_r = start_star_dome_color.r,
			star_dome_color_g = start_star_dome_color.g,
			star_dome_color_b = start_star_dome_color.b,
			star_dome_visibility = star_dome:GetSmartProperty("Star Visibility"),

			rain_density = start_rain_density
			
		}, {

			sky_dome_color_r = end_sky_dome_color.r,
			sky_dome_color_g = end_sky_dome_color.g,
			sky_dome_color_b = end_sky_dome_color.b,
			sky_dome_brightness = data:GetCustomProperty("sky_dome_brightness"),

			sky_light_color_r = end_sky_light_color.r,
			sky_light_color_g = end_sky_light_color.g,
			sky_light_color_b = end_sky_light_color.b,
			sky_light_intensity = data:GetCustomProperty("sky_light_intensity"),

			sun_light_color_r = end_sun_light_color.r,
			sun_light_color_g = end_sun_light_color.g,
			sun_light_color_b = end_sun_light_color.b,
			sun_light_intensity = data:GetCustomProperty("sun_light_intensity"),

			sun_light_rotation_x = end_sun_light_rotation.x,
			sun_light_rotation_y = end_sun_light_rotation.y,
			sun_light_rotation_z = end_sun_light_rotation.z,

			star_dome_color_r = end_star_dome_color.r,
			star_dome_color_g = end_star_dome_color.g,
			star_dome_color_b = end_star_dome_color.b,
			star_dome_visibility = data:GetCustomProperty("star_dome_visibility"),

			rain_density = end_rain_density

		})

		tween:on_change(function(tween_data)
			local current_sky_dome_color = sky_dome:GetSmartProperty("Overall Tint")
			local current_sky_light_color = sky_light:GetSmartProperty("Tint Color")
			local current_sun_light_color = sun_light:GetSmartProperty("Light Color")
			local current_star_dome_color = star_dome:GetSmartProperty("Space Tint")
			local current_sun_light_rotation = sun_light:GetWorldRotation()

			current_sky_dome_color.r = tween_data.sky_dome_color_r
			current_sky_dome_color.g = tween_data.sky_dome_color_g
			current_sky_dome_color.b = tween_data.sky_dome_color_b

			current_sky_light_color.r = tween_data.sky_light_color_r
			current_sky_light_color.g = tween_data.sky_light_color_g
			current_sky_light_color.b = tween_data.sky_light_color_b

			current_sun_light_color.r = tween_data.sun_light_color_r
			current_sun_light_color.g = tween_data.sun_light_color_g
			current_sun_light_color.b = tween_data.sun_light_color_b

			current_star_dome_color.r = tween_data.star_dome_color_r
			current_star_dome_color.g = tween_data.star_dome_color_g
			current_star_dome_color.b = tween_data.star_dome_color_b

			current_sun_light_rotation.x = tween_data.sun_light_rotation_x
			current_sun_light_rotation.y = tween_data.sun_light_rotation_y
			current_sun_light_rotation.z = tween_data.sun_light_rotation_z

			sky_dome:SetSmartProperty("Overall Tint", current_sky_dome_color)
			sky_dome:SetSmartProperty("Brightness", tween_data.sky_dome_brightness)

			sky_light:SetSmartProperty("Tint Color", current_sky_light_color)
			sky_light:SetSmartProperty("Intensity", tween_data.sky_light_intensity)

			sun_light:SetSmartProperty("Light Color", current_sun_light_color)
			sun_light:SetSmartProperty("Intensity", tween_data.sun_light_intensity)

			sun_light:SetWorldRotation(current_sun_light_rotation)

			star_dome:SetSmartProperty("Star Visibility", tween_data.star_dome_visibility)

			current_rain_volume:SetSmartProperty("density", tween_data.rain_density)
		end)

		tween:on_start(function()
			if(data:GetCustomProperty("rain")) then
				current_rain_volume:SetSmartProperty("Density", data:GetCustomProperty("rain_density"))
				current_rain_volume:Play()
				current_rain_sound:Play()

				if(data:GetCustomProperty("thunder")) then
					Task.Spawn(function()
						current_thunder_sound:Play()
				
						thunder_task = Task.Spawn(make_it_thunder, 6)
				
						thunder_task.repeatCount = -1
						thunder_task.repeatInterval = 8
					end, 1)
				else
					current_thunder_sound:Stop()

					if(thunder_task ~= nil) then
						thunder_task:Cancel()
						thunder_task = nil
					end
				end
			elseif(data:GetCustomProperty("abrupt_stop_rain")) then
				current_rain_volume:SetSmartProperty("Density", 0)
				current_rain_volume:Stop()
				current_rain_sound:Stop()
				current_thunder_sound:Stop()
			end
		end)

		tween:on_complete(function()
			current_rain_volume:SetSmartProperty("Density", 0)
			current_rain_volume:Stop()
			current_rain_sound:Stop()
			current_thunder_sound:Stop()
		end)

		tween:set_delay(data:GetCustomProperty("tween_delay"))
		tween:set_easing(data:GetCustomProperty("tween_ease"))
	end
end

-- @TODO: Disable this at some point
--[[
local_player.bindingPressedEvent:Connect(function(player, binding)
	if(binding == "ability_extra_1") then
		set_weather_profile("sunrise")
	elseif(binding == "ability_extra_2") then
		set_weather_profile("daytime")
	elseif(binding == "ability_extra_3") then
		set_weather_profile("nighttime")
	end
end)
--]]

function Tick(dt)
	if(tween ~= nil) then
		tween:tween(dt)
	end

	if(current_profile ~= nil and current_profile:GetCustomProperty("rotate_sky")) then
		local rot = sky_dome:GetWorldRotation()

		rot.z = rot.z + (dt / 3)

		sky_dome:SetWorldRotation(rot)
	end
end

Events.Connect("set_weather_profile", set_weather_profile)
