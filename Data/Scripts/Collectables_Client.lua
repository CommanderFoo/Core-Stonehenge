local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local collectables = script:GetCustomProperty("collectables"):WaitForObject()
local key = script:GetCustomProperty("key")
local items = script:GetCustomProperty("items"):WaitForObject()
local data_holder = script:GetCustomProperty("data_holder"):WaitForObject()

local children = items:GetChildren()
local dig_collectables = script:GetCustomProperty("dig_collectables"):WaitForObject()
local tent_collectables = script:GetCustomProperty("tent_collectables"):WaitForObject()
local lily_area_collectables = script:GetCustomProperty("lily_area_collectables"):WaitForObject()
local chamber_area_collectables = script:GetCustomProperty("chamber_area_collectables"):WaitForObject()

local border = script:GetCustomProperty("border"):WaitForObject()
local corner = script:GetCustomProperty("corner"):WaitForObject()

local border_color = border:GetColor()
local corner_color = corner:GetColor()

local tween = nil

local local_player = Game.GetLocalPlayer()
local is_open = false
local can_open = false

local all_collectables = {}
local group_collectables = {}

local offset = 20

for i, c in ipairs(items:GetChildren()) do
	if(c.name == "Area Name") then
		if(i > 1) then
			offset = offset + 30
		end

		c.y = offset
		offset = offset + 40
	else
		c.y = offset
		offset = offset + 100
	end
end

for i, c in ipairs(dig_collectables:GetChildren()) do
	local data = {

		obj = c,
		parent = c:GetCustomProperty("collectable_parent_id"),
		id = c:GetCustomProperty("collectable_id")

	}

	if(data.parent ~= nil and data.parent > 0) then
		if(not group_collectables[data.parent]) then
			group_collectables[data.parent] = {

				quantity = 0,
				ids = {}

			}
		end

		table.insert(group_collectables[data.parent].ids, #group_collectables[data.parent].ids + 1, data.id)
	end

	table.insert(all_collectables, #all_collectables + 1, data)
end

for i, c in ipairs(tent_collectables:GetChildren()) do
	local data = {

		obj = c,
		parent = c:GetCustomProperty("collectable_parent_id"),
		id = c:GetCustomProperty("collectable_id")

	}

	if(data.parent ~= nil and data.parent > 0) then
		if(not group_collectables[data.parent]) then
			group_collectables[data.parent] = {

				quantity = 0,
				ids = {}

			}
		end

		table.insert(group_collectables[data.parent].ids, #group_collectables[data.parent].ids + 1, data.id)
	end

	table.insert(all_collectables, #all_collectables + 1, data)
end

for i, c in ipairs(lily_area_collectables:GetChildren()) do
	local data = {

		obj = c,
		parent = c:GetCustomProperty("collectable_parent_id"),
		id = c:GetCustomProperty("collectable_id")

	}

	if(data.parent ~= nil and data.parent > 0) then
		if(not group_collectables[data.parent]) then
			group_collectables[data.parent] = {

				quantity = 0,
				ids = {}

			}
		end

		table.insert(group_collectables[data.parent].ids, #group_collectables[data.parent].ids + 1, data.id)
	end

	table.insert(all_collectables, #all_collectables + 1, data)
end

for i, c in ipairs(chamber_area_collectables:GetChildren()) do
	local data = {

		obj = c,
		parent = c:GetCustomProperty("collectable_parent_id"),
		id = c:GetCustomProperty("collectable_id")

	}

	if(data.parent ~= nil and data.parent > 0) then
		if(not group_collectables[data.parent]) then
			group_collectables[data.parent] = {

				quantity = 0,
				ids = {}

			}
		end

		table.insert(group_collectables[data.parent].ids, #group_collectables[data.parent].ids + 1, data.id)
	end

	table.insert(all_collectables, #all_collectables + 1, data)
end

local_player.bindingPressedEvent:Connect(function(p, binding)
	if(can_open and YOOTIL.Input[key] == binding) then
		if(not is_open) then
			show()
			Events.Broadcast("play_music", "menu_inspect_inventory")
			YOOTIL.Events.broadcast_to_server("disable_player", local_player)
			Events.Broadcast("can_open_inventory", false)
			Events.Broadcast("collectables_open", true)
			UI.SetCanCursorInteractWithUI(true)

			YOOTIL.Events.broadcast_to_server("hide_all_interaction_labels")
		else
			close()
			Events.Broadcast("stop_music")
			Events.Broadcast("hide_cursor")
			YOOTIL.Events.broadcast_to_server("enable_player", local_player)
			Events.Broadcast("can_open_inventory", true)
			Events.Broadcast("collectables_open", false)
			UI.SetCanCursorInteractWithUI(false)
		
			YOOTIL.Events.broadcast_to_server("show_all_interaction_labels")
		end
	end
end)

function show()
	if(is_open) then
		return
	end

	tween = YOOTIL.Tween:new(.7, { x = collectables.x }, { x = 30 })
	
	tween:on_change(function(c)
		collectables.x = c.x
	end)

	tween:on_complete(function()
		tween = nil
	end)

	tween:set_easing("outBack")
	is_open = true

	--border_color.a = 1
	--border:SetColor(border_color)

	--corner_color.a = 1
	--corner:SetColor(corner_color)
end

function close()
	if(not is_open) then
		return
	end

	tween = YOOTIL.Tween:new(.5, { x = collectables.x }, { x = -420 })
	
	tween:on_change(function(c)
		collectables.x = c.x
	end)

	tween:on_complete(function()
		tween = nil
	end)

	tween:set_easing("inBack")
	is_open = false

	--border_color.a = 0.5
	--border:SetColor(border_color)

	--corner_color.a = 0.5
	--corner:SetColor(corner_color)
end

function check_collectables()
	for i, c in ipairs(all_collectables) do
		if(c.visibility == Visibility.FORCE_OFF and c.collision == Collision.FORCE_OFF) then
			enable_collectable(c:GetCustomProperty("collectable_id"))
		end
	end
end

function enable_collectable(id, parent_id, no_msg)
	for i, c in ipairs(children) do
		if(c.name ~= "Area Name") then
			local ui_id = tonumber(id)
			local item_id = tonumber(c.name)

			if(parent_id ~= nil) then
				if(c:GetCustomProperty("parent_id") and c:GetCustomProperty("parent_id") == parent_id) then
					ui_id = tonumber(parent_id)
					has_quantity = true

					if(group_collectables[ui_id]) then
						group_collectables[ui_id].quantity = group_collectables[ui_id].quantity + 1

						c:FindChildByName("Collectables Quantity").visibility = Visibility.FORCE_ON
						c:FindDescendantByName("Quantity").text = tostring(group_collectables[ui_id].quantity .. " / " .. tostring(#group_collectables[ui_id].ids))
					end
				end
			end

			if(ui_id == item_id) then
				c:FindChildByName("Name Hidden").visibility = Visibility.FORCE_OFF
				c:FindChildByName("Desc Hidden").visibility = Visibility.FORCE_OFF

				c:FindChildByName("Name").visibility = Visibility.FORCE_ON
				c:FindChildByName("Desc").visibility = Visibility.FORCE_ON

				if(ui_id == 32) then
					c:FindChildByName("Icon"):SetColor(Color.New(0.196, 0.80, 0.196, 1))
				else
					c:FindChildByName("Icon"):SetColor(Color.New(1, 1, 1, 1))
				end

				if(not no_msg) then
					Events.Broadcast("add_notification", {
						
						msg = "\"" .. c:FindChildByName("Name").text .. "\" has been added to your collection.",
						in_time = .5,
						out_time = .5,
						stay_time = 1.2

					})
				end
			end
		end
	end
end

function Tick(dt)
	if(tween ~= nil) then
		tween:tween(dt)
	end
end

Events.Connect("show_collectables", function(state)
	if(state) then
		show()
	else
		close()
	end
end)

Events.Connect("can_open_collectables", function(state)
	can_open = state
end)

Events.Connect("enable_collectables", function()
	collectables.visibility = Visibility.FORCE_ON
end)

Events.Connect("add_collectable", function(obj_ref)
	local id = obj_ref:GetObject():GetCustomProperty("collectable_id")
	local parent_id = obj_ref:GetObject():GetCustomProperty("collectable_parent_id")

	enable_collectable(id, parent_id, false)

	YOOTIL.Events.broadcast_to_server("add_collectable", local_player, id, parent_id, obj_ref)
end)

Events.Connect("check_collectables", check_collectables)

data_holder.networkedPropertyChangedEvent:Connect(function(obj, prop)
	if(prop == "collectable_data") then
		local data = data_holder:GetCustomProperty("collectable_data")

		if(data) then
			for id in string.gmatch(data, "([^|]+)") do
				enable_collectable(id, nil, true)
			end
		end
	end

	if(prop == "group_collectable_data") then
		local data = data_holder:GetCustomProperty("group_collectable_data")

		if(data) then
			for entry in string.gmatch(data, "([^|]+)") do
				local count = 1
				local group = nil

				for str in string.gmatch(entry, "([^,]+)") do
					if(count == 1) then
						group = tonumber(str)
					else
						enable_collectable(str, group, true)
					end

					count = count + 1
				end
			end
		end
	end
end)