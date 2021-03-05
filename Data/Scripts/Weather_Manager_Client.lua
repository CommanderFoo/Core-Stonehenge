local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local rain_volume = script:GetCustomProperty("rain_volume"):WaitForObject()
local sky_dome = script:GetCustomProperty("sky_dome"):WaitForObject()
local sky_light = script:GetCustomProperty("sky_light"):WaitForObject()
local sun_light = script:GetCustomProperty("sun_light"):WaitForObject()
local sarsen_rocks = script:GetCustomProperty("sarsen_rocks"):WaitForObject()
local bluestone_rocks = script:GetCustomProperty("bluestone_rocks"):WaitForObject()
local sarsen_rocks_wet = script:GetCustomProperty("sarsen_rocks_wet"):WaitForObject()
local bluestone_rocks_wet = script:GetCustomProperty("bluestone_rocks_wet"):WaitForObject()
local rain_sound = script:GetCustomProperty("rain_sound"):WaitForObject()
local thunder_sound = script:GetCustomProperty("thunder_sound"):WaitForObject()

local thunder_task = nil

local local_player = Game.GetLocalPlayer()

local tween = nil

function make_it_rain()
	tween = YOOTIL.Tween:new(3, {a = 1, b = 5, c = 3, d = 10}, {a = .3, b = 2, c = .9, d = 200})

	tween:on_change(function(v)
		sky_dome:SetSmartProperty("brightness", v.a)
		sky_light:SetSmartProperty("intensity", v.b)
		sun_light:SetSmartProperty("intensity", v.c)
		rain_volume:SetSmartProperty("density", v.d)
	end)

	tween:on_start(function()
		rain_volume:Play()
		rain_sound:Play()

		Task.Spawn(function()
			sarsen_rocks_wet.visibility = Visibility.FORCE_ON
			bluestone_rocks_wet.visibility = Visibility.FORCE_ON
	
			sarsen_rocks.visibility = Visibility.FORCE_OFF
			bluestone_rocks.visibility = Visibility.FORCE_OFF
	
			thunder_sound:Play()
	
			thunder_task = Task.Spawn(make_it_thunder, 6)
	
			thunder_task.repeatCount = -1
			thunder_task.repeatInterval = 8
		end, 1)
	end)
end

function make_it_thunder()
	local can_thunder = math.random(1, 100)

	if(can_thunder > 50) then
		thunder_sound:Play()
	end
end

function make_it_sunny()
	rain_volume:Stop()
	rain_sound:Stop()

	sky_dome:SetSmartProperty("brightness", 1)
	sky_light:SetSmartProperty("intensity", 5)
	sun_light:SetSmartProperty("intensity", 3)

	Task.Spawn(function()
		sarsen_rocks_wet.visibility = Visibility.FORCE_OFF
		bluestone_rocks_wet.visibility = Visibility.FORCE_OFF

		sarsen_rocks.visibility = Visibility.FORCE_ON
		bluestone_rocks.visibility = Visibility.FORCE_ON

		thunder_sound:Stop()

		if(thunder_task ~= nil) then
			thunder_task:Cancel()
			thunder_task = nil
		end
	end)

	tween = YOOTIL.Tween:new(3, {a = .3, b = 2, c = .9, d = 200}, {a = 1, b = 5, c = 3, d = 0})

	tween:on_change(function(v)
		sky_dome:SetSmartProperty("brightness", v.a)
		sky_light:SetSmartProperty("intensity", v.b)
		sun_light:SetSmartProperty("intensity", v.c)
		rain_volume:SetSmartProperty("density", v.d)
	end)

	tween:on_complete(function()
		rain_volume:Stop()
	end)

	tween:on_start(function()	
		thunder_sound:Stop()
	
		if(thunder_task ~= nil) then
			thunder_task:Cancel()
			thunder_task = nil
		end

		Task.Spawn(function()
			rain_sound:Stop()
		end, 2)

		Task.Spawn(function()
			sarsen_rocks_wet.visibility = Visibility.FORCE_OFF
			bluestone_rocks_wet.visibility = Visibility.FORCE_OFF
	
			sarsen_rocks.visibility = Visibility.FORCE_ON
			bluestone_rocks.visibility = Visibility.FORCE_ON
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

--Task.Spawn(make_it_rain, 5)
--Task.Spawn(make_it_sunny, 15)

