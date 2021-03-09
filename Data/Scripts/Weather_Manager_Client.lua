local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local main_rain_volume = script:GetCustomProperty("main_rain_volume"):WaitForObject()
local grave_rain_volume = script:GetCustomProperty("grave_rain_volume"):WaitForObject()

local main_rain_sound = script:GetCustomProperty("main_rain_sound"):WaitForObject()
local grave_rain_sound = script:GetCustomProperty("grave_rain_sound"):WaitForObject()

local main_thunder_sound = script:GetCustomProperty("main_thunder_sound"):WaitForObject()
local grave_thunder_sound = script:GetCustomProperty("grave_thunder_sound"):WaitForObject()

local grave_rain_density = script:GetCustomProperty("grave_rain_density")
local main_rain_density = script:GetCustomProperty("main_rain_density")

local sky_dome = script:GetCustomProperty("sky_dome"):WaitForObject()
local sky_light = script:GetCustomProperty("sky_light"):WaitForObject()
local sun_light = script:GetCustomProperty("sun_light"):WaitForObject()
local sarsen_rocks = script:GetCustomProperty("sarsen_rocks"):WaitForObject()
local bluestone_rocks = script:GetCustomProperty("bluestone_rocks"):WaitForObject()
local sarsen_rocks_wet = script:GetCustomProperty("sarsen_rocks_wet"):WaitForObject()
local bluestone_rocks_wet = script:GetCustomProperty("bluestone_rocks_wet"):WaitForObject()

local thunder_task = nil

local current_rain_sound = nil
local current_rain_volume = nil
local current_thunder_sound = nil
local current_rain_density = 0

local local_player = Game.GetLocalPlayer()

local tween = nil

function make_it_rain(where)
	if(where == "grave_area") then
		current_rain_sound = grave_rain_sound
		current_rain_volume = grave_rain_volume
		current_thunder_sound = grave_thunder_sound
		current_rain_density = grave_rain_density
	else
		current_rain_sound = main_rain_sound
		current_rain_volume = main_rain_volume
		current_thunder_sound = main_thunder_sound
		current_rain_density = main_rain_density
	end

	tween = YOOTIL.Tween:new(3, {a = 1, b = 5, c = 3, d = 0}, {a = .3, b = 2.5, c = .9, d = current_rain_density})

	tween:on_change(function(v)
		sky_dome:SetSmartProperty("brightness", v.a)
		sky_light:SetSmartProperty("intensity", v.b)
		sun_light:SetSmartProperty("intensity", v.c)
		current_rain_volume:SetSmartProperty("density", v.d)
	end)

	tween:on_start(function()
		current_rain_volume:Play()
		current_rain_sound:Play()

		Task.Spawn(function()
			--sarsen_rocks_wet.visibility = Visibility.FORCE_ON
			--bluestone_rocks_wet.visibility = Visibility.FORCE_ON
	
			--sarsen_rocks.visibility = Visibility.FORCE_OFF
			--bluestone_rocks.visibility = Visibility.FORCE_OFF
	
			current_thunder_sound:Play()
	
			thunder_task = Task.Spawn(make_it_thunder, 6)
	
			thunder_task.repeatCount = -1
			thunder_task.repeatInterval = 8
		end, 1)
	end)
end

function make_it_thunder()
	local can_thunder = math.random(1, 100)

	if(can_thunder > 50) then
		current_thunder_sound:Play()
	end
end

function make_it_sunny()
	current_rain_volume:Stop()
	current_rain_sound:Stop()

	sky_dome:SetSmartProperty("brightness", 1)
	sky_light:SetSmartProperty("intensity", 5)
	sun_light:SetSmartProperty("intensity", 3)

	Task.Spawn(function()
		--sarsen_rocks_wet.visibility = Visibility.FORCE_OFF
		--bluestone_rocks_wet.visibility = Visibility.FORCE_OFF

		--sarsen_rocks.visibility = Visibility.FORCE_ON
		--bluestone_rocks.visibility = Visibility.FORCE_ON

		current_thunder_sound:Stop()

		if(thunder_task ~= nil) then
			thunder_task:Cancel()
			thunder_task = nil
		end
	end)

	tween = YOOTIL.Tween:new(3, {a = .3, b = 2.5, c = .9, d = current_rain_density}, {a = 1, b = 5, c = 3, d = 0})

	tween:on_change(function(v)
		sky_dome:SetSmartProperty("brightness", v.a)
		sky_light:SetSmartProperty("intensity", v.b)
		sun_light:SetSmartProperty("intensity", v.c)
		current_rain_volume:SetSmartProperty("density", v.d)
	end)

	tween:on_complete(function()
		current_rain_volume:Stop()
	end)

	tween:on_start(function()	
		current_thunder_sound:Stop()
	
		if(thunder_task ~= nil) then
			thunder_task:Cancel()
			thunder_task = nil
		end

		Task.Spawn(function()
			current_rain_sound:Stop()
		end, 2)

		Task.Spawn(function()
			--sarsen_rocks_wet.visibility = Visibility.FORCE_OFF
			--bluestone_rocks_wet.visibility = Visibility.FORCE_OFF
	
			--sarsen_rocks.visibility = Visibility.FORCE_ON
			--bluestone_rocks.visibility = Visibility.FORCE_ON
		end, 3)
	end)
end

local_player.bindingPressedEvent:Connect(function(player, binding)
	if(binding == "ability_extra_1") then
		make_it_rain()
	elseif(binding == "ability_extra_2") then
		make_it_sunny()
	end
end)

function Tick(dt)
	if(tween ~= nil) then
		tween:tween(dt)
	end
end

Events.Connect("make_it_rain", make_it_rain)
Events.Connect("make_it_sunny", make_it_sunny)
