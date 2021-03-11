local lookup = script:GetCustomProperty("lookup"):WaitForObject()
local slots = script:GetCustomProperty("slots"):WaitForObject()

local inventory = {}
local max_slots = #slots:GetChildren()
local inventory_active = false

for i = 1, max_slots do
	inventory[i] = {

		data = nil,
		quantity = 0,
		button = slots:GetChildren()[i],
		icon = nil

	}
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

				Events.BroadcastToServer("inventory_add", free_slot_index, inventory_id, quantity, obj_ref, data:GetCustomProperty("remove_from_world"))
			else
				print("We run out of free inventory slots, this shouldn't be possible.")
			end
		end

		refresh_ui()
	end
end

function refresh_ui()

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

			refresh_ui()
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
				refresh_ui()

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

			refresh_ui()
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

end

function disable_inventory()

end

Events.Connect("inventory_add", add)
Events.Connect("inventory_remove", remove)
Events.Connect("inventory_increase", increase)
Events.Connect("inventory_decrease", decrease)
Events.Connect("inventory_clear", clear)
Events.Connect("enable_inventory", enable_inventory)
Events.Connect("disable_inventory", disable_inventory)