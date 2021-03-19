local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local ball = script:GetCustomProperty("ball"):WaitForObject()
local lightning = script:GetCustomProperty("lightning"):WaitForObject()
local target = script:GetCustomProperty("target"):WaitForObject()
local zap = script:GetCustomProperty("zap"):WaitForObject()
local blast = script:GetCustomProperty("blast"):WaitForObject()
local dust = script:GetCustomProperty("dust"):WaitForObject()
local rocks = script:GetCustomProperty("rocks"):WaitForObject()
local rocks2 = script:GetCustomProperty("rocks2"):WaitForObject()
local explosion = script:GetCustomProperty("explosion"):WaitForObject()
local general_light = script:GetCustomProperty("general_light"):WaitForObject()
local lightning_light = script:GetCustomProperty("lightning_light"):WaitForObject()

local local_player = Game.GetLocalPlayer()

local beams = {

	red = script:GetCustomProperty("red_beam"):WaitForObject(),
	white = script:GetCustomProperty("white_beam"):WaitForObject(),
	blue = script:GetCustomProperty("blue_beam"):WaitForObject(),
	yellow = script:GetCustomProperty("yellow_beam"):WaitForObject()

}

local tweens = {}

local ball_tween = nil
local energy_tweens = {}
local count = 0

local energy_beams = {

	red = script:GetCustomProperty("red"):WaitForObject(),
	white = script:GetCustomProperty("white"):WaitForObject(),
	yellow = script:GetCustomProperty("yellow"):WaitForObject(),
	blue = script:GetCustomProperty("blue"):WaitForObject()

}

function Tick(dt)
	for i, v in pairs(tweens) do
		if(v ~= nil) then
			v:tween(dt)
		end
	end

	for i, v in pairs(energy_tweens) do
		if(v ~= nil) then
			v:tween(dt)
		end
	end

	if(ball_tween ~= nil) then
		ball_tween:tween(dt)
	end
end

Events.Connect("enable_all_beams", function()
	for k, v in pairs(beams) do
		v.visibility = Visibility.FORCE_ON

		local e = 3

		if(k == "red" or k == "blue") then
			e = 16
		end

		v:SetSmartProperty("Emissive Boost", e)
	end
end)

Events.Connect("enable_beam", function(color)
	local start_vals = { e = 0 }
	local end_vals = { e = 4 }

	if(color == "red" or color == "blue") then
		end_vals.e = 16
	else
		end_vals.e = 3
	end

	local t = YOOTIL.Tween:new(10, start_vals, end_vals)

	t:on_start(function()
		beams[color].visibility = Visibility.FORCE_ON
	end)

	t:on_change(function(c)
		beams[color]:SetSmartProperty("Emissive Boost", c.e)
	end)

	t:on_complete(function()
		--Events.Broadcast("play_sound", color .. "_hum")
		t = nil
	end)

	table.insert(tweens, t)
end)

function play_lightning()
	if(count > 3) then
		lightning.visibility = Visibility.FORCE_ON
		lightning_light.visibility = Visibility.FORCE_ON
		blast:Play()
		dust:Play()
		rocks2:Play()
		explosion:Play()

		Events.Broadcast("stop_additional_music")

		Events.Broadcast("open_up_cave")
		Task.Wait(0.3)
		lightning.visibility = Visibility.FORCE_OFF
		lightning_light.visibility = Visibility.FORCE_OFF
		lightning_task:Cancel()
		lightning_task = nil

		return
	end

	local rng = math.random(0, 100)

	if(rng > 30) then
		local flash = math.random(100, 400)

		lightning.visibility = Visibility.FORCE_ON
		lightning_light.visibility = Visibility.FORCE_ON
		blast:Play()
		dust:Play()
		rocks:Play()
		Task.Wait(flash / 100)
		lightning.visibility = Visibility.FORCE_OFF
		lightning_light.visibility = Visibility.FORCE_OFF

		count = count + 1
	end
end

Events.Connect("charge_up_energy", function()

	-- Beams

	for c, b in pairs(energy_beams) do
		local width_tween = YOOTIL.Tween:new(15, { w = 0 }, { w = .8 })

		width_tween:on_start(function()
			b.visibility = Visibility.FORCE_ON
		end)

		width_tween:on_change(function(c)
			b:SetSmartProperty("Beam Width", c.w)
		end)

		width_tween:on_complete(function()
			width_tween = nil
		end)

		width_tween:set_delay(4)
		table.insert(energy_tweens, width_tween)

		Events.Broadcast("play_additional_music", "energy")
	end

	-- Move ball up

	ball_tween = YOOTIL.Tween:new(10, {

		z = 102,
		l = 0

	}, {

		z = 2253,
		l = 4000

	})

	ball_tween:on_start(function()
		ball.visibility = Visibility.FORCE_ON
		general_light.visibility = Visibility.FORCE_ON
	end)

	ball_tween:on_change(function(c)
		local p = ball:GetWorldPosition()

		p.z = c.z

		ball:SetWorldPosition(p)

		general_light.attenuationRadius = c.l
	end)

	ball_tween:on_complete(function()
		zap:Play()

		-- Grow ball

		ball_tween = YOOTIL.Tween:new(6, { s = 0.1 }, { s = 3 })

		ball_tween:on_change(function(c)
			ball:SetSmartProperty("Particle Scale Multiplier", c.s)
		end)

		ball_tween:on_complete(function()
			ball_tween = nil

			lightning_task = Task.Spawn(play_lightning)
			lightning_task.repeatCount = -1
			lightning_task.repeatInterval = .8
		end)
	end)

	ball_tween:set_delay(2)
	ball_tween:set_easing("inQuint")
end)

Events.Connect("energy_to_end_position", function()
	for c, b in pairs(energy_beams) do
		b.visibility = Visibility.FORCE_ON
		b:SetSmartProperty("Beam Width", .8)
	end

	ball.visibility = Visibility.FORCE_ON
	general_light.visibility = Visibility.FORCE_ON
	general_light.attenuationRadius = 4000
	ball:SetWorldPosition(Vector3.New(6732.029, 3619.475, 2253))
	ball:SetSmartProperty("Particle Scale Multiplier", 3)
	zap:Play()
end)