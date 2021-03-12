local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local lookup = script:GetCustomProperty("lookup"):WaitForObject()
local slots = script:GetCustomProperty("slots"):WaitForObject()
local key_binding = script:GetCustomProperty("key_binding")
local inventory_ui = script:GetCustomProperty("inventory_ui"):WaitForObject()

local hover_color = script:GetCustomProperty("hover_color")
local unhover_color = script:GetCustomProperty("unhover_color")
local active_color = script:GetCustomProperty("active_color")

local local_player = Game.GetLocalPlayer()

local inventory = {}
local max_slots = #slots:GetChildren()
local inventory_active = false
local can_open_inventory = false
local can_use_inventory = false
local active_slot = nil
local is_inspecting = false

for i = 1, max_slots do
	inventory[i] = {

		data = nil,
		quantity = 0,
		button = slots:GetChildren()[i],
		background = slots:GetChildren()[i]:FindChildByName("Background"),
		icon = nil,
		disabled = false

	}

	inventory[i].button.hoveredEvent:Connect(function()
		if(inventory[i].data ~= nil and not inventory[i].disabled) then
			inventory[i].background:SetColor(hover_color)

			Events.Broadcast("over_inventory", true)

			local type = "inventory_look"

			if(inventory[i].data:GetCustomProperty("can_combine")) then
				type = "combine"
			end

			Events.Broadcast("show_cursor", type)
		end
	end)

	inventory[i].button.unhoveredEvent:Connect(function()
		if(inventory[i].data ~= nil and not inventory[i].disabled and not inventory[i].active) then
			inventory[i].background:SetColor(unhover_color)

			Events.Broadcast("over_inventory", false)
		end
	end)

	--[[
	inventory[i].button.clickedEvent:Connect(function()
		clean_up_active_data()

		if(inventory[i].data ~= nil) then
			inventory[i].background:SetColor(active_color)
			inventory[i].active = true
			active_slot = inventory[i]
		end
	end)
	--]]
end

function clean_up_active_data()
	if(active_slot ~= nil) then
		active_slot.active = false
		active_slot.background:SetColor(unhover_color)
		active_slot = nil
	end
end

function get_free_slot()
	for i, e in ipairs(inventory) do
		if(e.data == nil) then
			return i, e
		end
	end

	return nil, nil
end

function get_existing_slot(inventory_id)
	for i, e in ipairs(inventory) do
		if(e.data ~= nil and e.data:GetCustomProperty("id") == inventory_id) then
			return i, e
		end
	end

	return nil, nil
end

function add(obj_ref)
	local id = obj_ref

	if(type(id) ~= "string") then
		id = obj_ref:GetObject().id
	end
	
	local data = get_item_from_lookup(id)
	
	if(data ~= nil and Object.IsValid(data)) then
		local inventory_id = data:GetCustomProperty("id")
		local quantity = data:GetCustomProperty("quantity")
		local existing_slot_index, existing_slot_entry = get_existing_slot(inventory_id)

		if(existing_slot_index and existing_slot_entry) then
			increase(obj_ref, quantity)
		else
			local free_slot_index, free_slot_entry = get_free_slot()

			if(free_slot_index and free_slot_entry) then
				free_slot_entry.data = data
				free_slot_entry.quantity = quantity
				free_slot_entry.icon = World.SpawnAsset(data:GetCustomProperty("ui_asset"), { parent = free_slot_entry.button })				

				if(inventory_active) then
					free_slot_entry.icon:SetColor(Color.New(1, 1, 1, 1))
				end

				Events.BroadcastToServer("inventory_add", free_slot_index, inventory_id, quantity, obj_ref, data:GetCustomProperty("remove_from_world"))
			else
				print("We run out of free inventory slots, this shouldn't be possible.")
			end
		end
	end
end

function increase(obj_ref, quantity)
	local id = obj_ref

	if(type(id) ~= "string") then
		id = obj_ref:GetObject().id
	end
	
	local data = get_item_from_lookup(id)

	if(data ~= nil and Object.IsValid(data)) then
		local inventory_id = data:GetCustomProperty("id")
		local quantity = data:GetCustomProperty("quantity")
		local existing_slot_index, existing_slot_entry = get_existing_slot(inventory_id)

		if(existing_slot_index and existing_slot_entry) then
			existing_slot_index.quantity = existing_slot_index.quantity + quantity

			Events.BroadcastToServer("inventory_increase", existing_slot_index, quantity)
		end
	end
end

function decrease(obj_ref, quantity)
	local id = obj_ref

	if(type(id) ~= "string") then
		id = obj_ref:GetObject().id
	end
	
	local data = get_item_from_lookup(id)

	if(data ~= nil and Object.IsValid(data)) then
		local inventory_id = data:GetCustomProperty("id")
		local quantity = data:GetCustomProperty("quantity")
		local existing_slot_index, existing_slot_entry = get_existing_slot(inventory_id)

		if(existing_slot_index and existing_slot_entry) then
			existing_slot_index.quantity = existing_slot_index.quantity - quantity

			if(existing_slot_entry.quantity <= 0) then
				remove(obj_ref)
			else
				Events.BroadcastToServer("inventory_decrease", existing_slot_index, quantity)
			end
		end
	end
end

function remove(obj_ref)
	local id = obj_ref

	if(type(id) ~= "string") then
		id = obj_ref:GetObject().id
	end
	
	local data = get_item_from_lookup(id)
	
	if(data ~= nil and Object.IsValid(data)) then
		local inventory_id = data:GetCustomProperty("id")
		local existing_slot_index, existing_slot_entry = get_existing_slot(inventory_id)

		if(existing_slot_index and existing_slot_entry) then
			existing_slot_entry.data = nil
			existing_slot_entry.quantity = 0
			existing_slot_entry.icon:Destroy()

			Events.BroadcastToServer("inventory_remove", existing_slot_index)
		end
	end
end

function clear()
	inventory = {}
	Events.BroadcastToServer("inventory_clear")

	refresh_ui()
end

function get_item_from_lookup(muid)
	local children = lookup:GetChildren()

	for i = 1, #children do
		local child = lookup:GetChildren()[i]

		if(child.name == muid) then
			return child
		end
	end

	return nil
end

function clear_ui()
	for i, item in pairs(items_container:GetChildren()) do
		item:Destroy()
	end
end

function enable_inventory()
	can_use_inventory = true
	inventory_active = true

	for i = 1, max_slots do
		if(inventory[i].icon ~= nil) then
			local color = Color.New(1, 1, 1, 1)

			print(is_inspecting, inventory[i].data:GetCustomProperty("can_look"))

			if(is_inspecting and inventory[i].data:GetCustomProperty("can_look")) then
				print(1)
				color.a = .5
				inventory[i].disabled = true
			end
			
			inventory[i].icon:SetColor(color)
		end
	end
end

function disable_inventory()
	if(player_opened) then
		return
	end

	can_use_inventory = false
	inventory_active = false

	for i = 1, max_slots do
		if(inventory[i].icon ~= nil) then
			inventory[i].icon:SetColor(Color.New(1, 1, 1, .5))
		end
	end

	clean_up_active_data()
end

function show_inventory()
	inventory_ui.visibility = Visibility.FORCE_ON
end

function hide_inventory()
	inventory_ui.visibility = Visibility.FORCE_OFF
	clean_up_active_data()
end

local_player.bindingPressedEvent:Connect(function(p, binding)
	if(not is_inspecting and can_open_inventory and YOOTIL.Input[key_binding] == binding) then
		if(inventory_active) then
			--Events.Broadcast("clear_inspecting")
			disable_inventory()
			Events.Broadcast("hide_cursor")
			Events.BroadcastToServer("enable_player", local_player)
			UI.SetCanCursorInteractWithUI(false)
			Events.Broadcast("inventory_open", false)
		else
			enable_inventory()
			Events.BroadcastToServer("disable_player", local_player)
			Events.Broadcast("inventory_open", true)
			UI.SetCanCursorInteractWithUI(true)
		end
	end
end)

Events.Connect("inventory_add", add)
Events.Connect("inventory_remove", remove)
Events.Connect("inventory_increase", increase)
Events.Connect("inventory_decrease", decrease)
Events.Connect("inventory_clear", clear)
Events.Connect("enable_inventory", enable_inventory)
Events.Connect("disable_inventory", disable_inventory)
Events.Connect("show_inventory", show_inventory)
Events.Connect("can_open_inventory", function(can_open)
	can_open_inventory = can_open
end)

Events.Connect("inspecting", function(state)
	is_inspecting = state
end)