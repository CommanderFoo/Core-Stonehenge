local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local lookup = script:GetCustomProperty("lookup"):WaitForObject()
local slots = script:GetCustomProperty("slots"):WaitForObject()
local key_binding = script:GetCustomProperty("key_binding")
local inventory_ui = script:GetCustomProperty("inventory_ui"):WaitForObject()

local hover_color = script:GetCustomProperty("hover_color")
local unhover_color = script:GetCustomProperty("unhover_color")
local active_color = script:GetCustomProperty("active_color")

local look_helper = script:GetCustomProperty("look_helper"):WaitForObject()
local helper = look_helper:FindChildByName("Helper")

local local_player = Game.GetLocalPlayer()

local inventory = {}
local max_slots = #slots:GetChildren()
local inventory_active = false
local can_open_inventory = false
local active_slot = nil
local is_inspecting = false
local is_interacting = false
local active_looking_obj = nil
local mouse_pressed = false

for i = 1, max_slots do
	inventory[i] = {

		data = nil,
		quantity = 0,
		button = slots:GetChildren()[i],
		background = slots:GetChildren()[i]:FindChildByName("Background"),
		icon = nil,
		disabled = false,
		inspecting = false

	}

	inventory[i].button.hoveredEvent:Connect(function()
		if(inventory[i].data ~= nil and not inventory[i].disabled) then
			inventory[i].background:SetColor(hover_color)

			Events.Broadcast("over_inventory", true)

			local type = "default"

			if(inventory[i].data:GetCustomProperty("can_combine")) then
				type = "combine"
			elseif(inventory[i].data:GetCustomProperty("can_look")) then
				type = "inventory_look"
			end

			Events.Broadcast("show_cursor", type)
		end
	end)

	inventory[i].button.unhoveredEvent:Connect(function()
		if(inventory[i].data ~= nil and not inventory[i].disabled and not inventory[i].active) then
			inventory[i].background:SetColor(unhover_color)
		end

		Events.Broadcast("over_inventory", false)
	end)

	inventory[i].button.clickedEvent:Connect(function()
		if(inventory[i].data ~= nil and not inventory[i].disabled) then
			local same_slot = inventory[i] == active_slot

			if(active_slot and active_slot.inspecting) then
				clean_up_active_data()
			end

			if(not same_slot) then
				inventory[i].background:SetColor(active_color)
				inventory[i].active = true
				active_slot = inventory[i]
				active_slot.inspecting = true

				if(inventory[i].data:GetCustomProperty("can_look")) then
					active_looking_obj = World.SpawnAsset(inventory[i].data:GetCustomProperty("model_asset"))
					active_looking_obj:SetWorldPosition(helper:GetWorldPosition())
				end
			end
		end
	end)
end

local_player.bindingPressedEvent:Connect(function(p, binding)
	if(binding == "ability_primary") then
		mouse_pressed = true
	end
end)

local_player.bindingReleasedEvent:Connect(function(p, binding)
	if(binding == "ability_primary") then
		mouse_pressed = false
	end
end)

function Tick()
	if(mouse_pressed and active_looking_obj ~= nil) then
		local cur_pos = UI.GetCursorPosition()
		local screen = UI.GetScreenSize()
		local rot = active_looking_obj:GetWorldRotation()
		local screen_pos = UI.GetScreenPosition(active_looking_obj:GetWorldPosition())

		if(screen_pos ~= nil) then
			if(cur_pos.y > (screen_pos.y + 100)) then
				rot.z = rot.z + .7
			elseif(cur_pos.y < (screen_pos.y - 100)) then
				rot.z = rot.z - .7
			end

			if(cur_pos.x > (screen_pos.x + 100)) then
				rot.y = rot.y + .7
			elseif(cur_pos.x < (screen_pos.x - 100)) then
				rot.y = rot.y - .7
			end

			active_looking_obj:SetWorldRotation(rot)
		end
	end
end

function clean_up_active_data()
	if(active_slot ~= nil) then
		if(Object.IsValid(active_looking_obj)) then
			active_looking_obj:Destroy()
			active_looking_obj = nil
		end

		active_slot.inspecting = false
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

	if(type(id) == "userdata") then
		id = obj_ref:GetObject().id
	end
	
	local data = get_item_from_lookup(id)
	
	if(data ~= nil and Object.IsValid(data)) then
		local inventory_id = data:GetCustomProperty("id")
		local quantity = data:GetCustomProperty("quantity")
		local existing_slot_index, existing_slot_entry = get_existing_slot(inventory_id)

		if(existing_slot_index and existing_slot_entry) then
			increase(obj_ref, quantity, true)
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

function increase(obj_ref, quantity, remove_object)
	local id = obj_ref

	if(type(id) ~= "string") then
		id = obj_ref:GetObject().id
	end
	
	local data = get_item_from_lookup(id)

	if(data ~= nil and Object.IsValid(data)) then
		local inventory_id = data:GetCustomProperty("id")
		local quantity = data:GetCustomProperty("quantity") or 1
		local existing_slot_index, existing_slot_entry = get_existing_slot(inventory_id)

		if(existing_slot_index and existing_slot_entry) then
			existing_slot_entry.quantity = existing_slot_entry.quantity + quantity

			if(not remove_object) then
				obj_ref = nil
			end

			Events.BroadcastToServer("inventory_increase", existing_slot_index, quantity, obj_ref, data:GetCustomProperty("remove_from_world"))
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
	local id = tostring(muid)
	
	for i = 1, #children do
		local child = lookup:GetChildren()[i]

		if((string.len(id) < 6 and tostring(child:GetCustomProperty("id")) == tostring(id)) or child.name == muid) then
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
	inventory_active = true

	for i = 1, max_slots do
		if(inventory[i].icon ~= nil) then
			local color = Color.New(1, 1, 1, 1)

			if((is_inspecting or is_interacting) and inventory[i].data:GetCustomProperty("can_look")) then
				color.a = .5
				inventory[i].disabled = true
			else
				inventory[i].disabled = false
			end
			
			inventory[i].icon:SetColor(color)
		end
	end
end

function disable_inventory()
	if(player_opened) then
		return
	end

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
	if(not is_inspecting and not is_interacting and can_open_inventory and YOOTIL.Input[key_binding] == binding) then
		if(inventory_active) then
			disable_inventory()
			Events.Broadcast("hide_cursor")
			Events.BroadcastToServer("enable_player", local_player)
			UI.SetCanCursorInteractWithUI(false)
			Events.Broadcast("inventory_open", false)

			Events.BroadcastToServer("show_all_interaction_labels")
		else
			enable_inventory()
			Events.BroadcastToServer("disable_player", local_player)
			Events.Broadcast("inventory_open", true)
			UI.SetCanCursorInteractWithUI(true)

			Events.BroadcastToServer("hide_all_interaction_labels")
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

Events.Connect("interacting", function(state)
	is_interacting = state
end)

Game.playerJoinedEvent:Connect(function(player)
	look_helper:AttachToLocalView()
end)