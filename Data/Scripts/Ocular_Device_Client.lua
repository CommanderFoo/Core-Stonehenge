local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local key = script:GetCustomProperty("key")
local ui_icon = script:GetCustomProperty("ui_icon"):WaitForObject()
local pulse = script:GetCustomProperty("pulse"):WaitForObject()
local rock_symbols = script:GetCustomProperty("rock_symbols"):WaitForObject()
local cooldown_ui = script:GetCustomProperty("cooldown_ui"):WaitForObject()
local ui_container = script:GetCustomProperty("ui_container"):WaitForObject()

local rock_colors = {

	["red"] = script:GetCustomProperty("red"):WaitForObject(),
	["yellow"] = script:GetCustomProperty("yellow"):WaitForObject(),
	["blue"] = script:GetCustomProperty("blue"):WaitForObject(),
	["white"] = script:GetCustomProperty("white"):WaitForObject()

}

local local_player = Game.GetLocalPlayer()

local can_use = true
local ocular_enabled = false

local fade_in_tweens = {}
local fade_out_tweens = {}

local pulse_max_range_out_tween = nil
local pulse_min_range_out_tween = nil

local cooldown_tween = nil

local last_pulse = 0
local pulse_cooldown = 8

local color_done = {

	yellow = false,
	red = false,
	blue = false,
	white = false

}

function find_rock_symbols_in_range()
	local symbols = {}
	local start_pos = local_player:GetWorldPosition()
	local alien_symbol_groups = rock_symbols:GetChildren()

	for i, g in ipairs(alien_symbol_groups) do
		if(not color_done[g.name]) then
			local child_symbols = g:GetChildren()
			local symbol_pos = child_symbols[1]:GetWorldPosition()
			local dist = (start_pos - symbol_pos).size

			if(dist < 4000) then
				table.insert(symbols, child_symbols)
			end
		end
	end

	return symbols
end

function fade_in_symbols(symbols)
	for k, v in pairs(symbols) do
		for i, sym in ipairs(v) do
			local t = YOOTIL.Tween:new(1, { e = 0, a = 0 }, { e = 7, a = 1 })

			t:on_start(function()
				sym.visibility = Visibility.FORCE_ON
			end)

			t:on_change(function(c)
				sym:SetSmartProperty("Emissive Boost", c.e)
			end)

			t:on_complete(function()
				t = nil
			end)

			table.insert(fade_in_tweens, t)
		end
	end
end

function fade_out_symbols(symbols)
	for k, v in pairs(symbols) do
		for i, sym in ipairs(v) do
			local t = YOOTIL.Tween:new(1, { e = 7, a = 1 }, { e = 0, a = 0 })

			t:on_change(function(c)
				sym:SetSmartProperty("Emissive Boost", c.e)
			end)

			t:on_complete(function()
				t = nil
				sym.visibility = Visibility.FORCE_OFF
			end)

			table.insert(fade_out_tweens, t)
		end
	end
end

local_player.bindingPressedEvent:Connect(function(p, binding)
	if(ocular_enabled and YOOTIL.Input[key] == binding and can_use) then
		last_pulse = time()

		cooldown_tween = YOOTIL.Tween:new(1, { h = -100 }, { h = 0 })

		cooldown_tween:on_change(function(c)
			cooldown_ui.height = math.floor(c.h)
		end)

		cooldown_tween:on_complete(function()
			cooldown_tween = YOOTIL.Tween:new(pulse_cooldown - 1, { h = 0 }, { h = -100 })

			cooldown_tween:on_change(function(c)
				cooldown_ui.height = math.floor(c.h)
			end)

			cooldown_tween:on_complete(function()
				cooldown_tween = nil
			end)
		end)

		ui_icon:SetColor(Color.New(1, 1, 1, 1))

		-- Max range

		pulse_max_range_out_tween = YOOTIL.Tween:new(2, { r = 0 }, { r = 100 })

		pulse_max_range_out_tween:on_start(function()
			pulse:SetSmartProperty("Pulse Min Range", 0)
			pulse:SetWorldPosition(local_player:GetWorldPosition())
		end)

		pulse_max_range_out_tween:on_change(function(c)
			pulse:SetSmartProperty("Pulse Range", c.r)
		end)

		-- Min range (aka the follow)

		pulse_min_range_out_tween = YOOTIL.Tween:new(2, { r = 0 }, { r = 100 })

		pulse_min_range_out_tween:on_change(function(c)
			pulse:SetSmartProperty("Pulse Min Range", c.r)
		end)

		pulse_min_range_out_tween:set_delay(1)

		Task.Wait(1)

		local symbols = find_rock_symbols_in_range()

		fade_in_symbols(symbols)

		Task.Wait(5)

		fade_out_symbols(symbols)
	end
end)

function Tick(dt)
	if(not ocular_enabled) then 
		return
	end

	if(time() > (last_pulse + pulse_cooldown)) then
		can_use = true
	else
		can_use = false
	end

	if(pulse_max_range_out_tween ~= nil) then
		pulse_max_range_out_tween:tween(dt)
	end

	if(pulse_min_range_out_tween ~= nil) then
		pulse_min_range_out_tween:tween(dt)
	end

	for k, t in pairs(fade_in_tweens) do
		if(t ~= nil) then
			t:tween(dt)
		end
	end

	for k, t in pairs(fade_out_tweens) do
		if(t ~= nil) then
			t:tween(dt)
		end
	end

	if(cooldown_tween ~= nil) then
		cooldown_tween:tween(dt)
	end
end

Events.Connect("enable_ocular_device", function(state)
	ocular_enabled = state
end)

Events.Connect("enable_ocular_device_ui", function()
	ui_container.visibility = Visibility.FORCE_ON
end)

Events.Connect("enable_symbol", function(color)
	local r = rock_colors[color]

	color_done[color] = true

	if(r:FindChildByName("Front")) then
		r:FindChildByName("Front"):SetSmartProperty("Color Emissive", Color[string.upper(color)])
		r:FindChildByName("Front"):SetSmartProperty("Color", Color[string.upper(color)])
		r:FindChildByName("Front").visibility = Visibility.FORCE_ON
		r:FindChildByName("Front"):SetSmartProperty("Emissive Boost", 7)
	end

	if(r:FindChildByName("Back")) then
		r:FindChildByName("Back"):SetSmartProperty("Color Emissive", Color[string.upper(color)])
		r:FindChildByName("Back"):SetSmartProperty("Color", Color[string.upper(color)])
		r:FindChildByName("Back").visibility = Visibility.FORCE_ON
		r:FindChildByName("Back"):SetSmartProperty("Emissive Boost", 7)
	end
end)