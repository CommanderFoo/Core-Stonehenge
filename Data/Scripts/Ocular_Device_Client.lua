local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local key = script:GetCustomProperty("key")
local ui_icon = script:GetCustomProperty("ui_icon"):WaitForObject()
local pulse = script:GetCustomProperty("pulse"):WaitForObject()
local rock_symbols = script:GetCustomProperty("rock_symbols"):WaitForObject()

local local_player = Game.GetLocalPlayer()
local can_use = true

local fade_in_tweens = {}
local fade_out_tweens = {}

local pulse_max_range_out_tween = nil
local pulse_min_range_out_tween = nil

function find_rock_symbols_in_range()
	local symbols = {}
	local start_pos = local_player:GetWorldPosition()
	local alien_symbol_groups = rock_symbols:GetChildren()

	for i, g in ipairs(alien_symbol_groups) do
		local child_symbols = g:GetChildren()
		local symbol_pos = child_symbols[1]:GetWorldPosition()
		local dist = (start_pos - symbol_pos).size

		if(dist < 4000) then
			table.insert(symbols, child_symbols)
		end
	end

	return symbols
end

function fade_in_symbols(symbols)
	for k, v in pairs(symbols) do
		for i, sym in ipairs(v) do
			local t = YOOTIL.Tween:new(1, { e = 0, a = 0 }, { e = 5, a = 1 })

			t:on_start(function()
				sym.visibility = Visibility.FORCE_ON
			end)

			t:on_change(function(c)
				--local col = sym:GetSmartProperty("Color")

				--col.a = c.a

				--sym:SetSmartProperty("Color", col)
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
			local t = YOOTIL.Tween:new(1, { e = 5, a = 1 }, { e = 0, a = 0 })

			t:on_change(function(c)
				--local col = sym:GetSmartProperty("Color")

				--col.a = c.a

				--sym:SetSmartProperty("Color", col)
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
	if(YOOTIL.Input[key] == binding and can_use) then
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
end

Events.Connect("can_use_ocular_device", function(state)
	can_use = state
end)