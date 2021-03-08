local lookup = script:GetCustomProperty("lookup"):WaitForObject()
local items_container = script:GetCustomProperty("items_container"):WaitForObject()

local inventory = {}

function add(obj_ref)
	local obj = obj_ref:GetObject()
	local data = get_item_from_lookup(obj.id)
	
	if(data ~= nil and Object.IsValid(data)) then
		local inventory_id = data:GetCustomProperty("id")
		local quantity = data:GetCustomProperty("quantity")

		if(inventory[inventory_id] ~= nil) then
			increase(obj_ref, quantity)
		else
			inventory[inventory_id] = {

				data = data,
				q = quantity

			}

			Events.BroadcastToServer("inventory_add", inventory_id, quantity, obj_ref, data:GetCustomProperty("remove_from_world"))
		end

		refresh_ui()
	end
end

function increase(obj_ref, quantity)
	local obj = obj_ref:GetObject()
	local data = get_item_from_lookup(obj.id)
	
	if(data ~= nil and Object.IsValid(data)) then
		local inventory_id = data:GetCustomProperty("id")

		inventory[inventory_id].q = inventory[inventory_id].q + quantity
		Events.BroadcastToServer("inventory_increase", inventory_id, quantity)

		refresh_ui()
	end
end

function decrease(obj_ref, quantity)
	local obj = obj_ref:GetObject()
	local data = get_item_from_lookup(obj.id)
	
	if(data ~= nil and Object.IsValid(data)) then
		local inventory_id = data:GetCustomProperty("id")

		inventory[inventory_id].q = math.max(0, inventory[inventory_id].q - quantity)
		Events.BroadcastToServer("inventory_decrease", inventory_id, quantity)

		refresh_ui()
	end
end

function remove(obj_ref)
	local obj = obj_ref:GetObject()
	local data = get_item_from_lookup(obj.id)
	
	if(data ~= nil and Object.IsValid(data)) then
		local inventory_id = data:GetCustomProperty("id")
		
		if(inventory[inventory_id] ~= nil) then
			inventory[inventory_id] = nil

			Events.BroadcastToServer("inventory_remove", inventory_id)

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

function refresh_ui()
	clear_ui()
	
	local items_per_line = math.floor(items_container.parent.width / 80)
	local x_offset = 0
	local y_offset = 0
	local count = 1

	for id, item in pairs(inventory) do
		local ui_item = World.SpawnAsset(item.data:GetCustomProperty("ui_asset"), { parent = items_container })

		ui_item.x = x_offset
		ui_item.y = y_offset

		x_offset = x_offset + 80
		
		if(count == items_per_line) then
			y_offset = y_offset + 80
			x_offset = 0
			count = 1
		end

		count = count + 1
	end
end

Events.Connect("inventory_add", add)
Events.Connect("inventory_remove", remove)
Events.Connect("inventory_increase", increase)
Events.Connect("inventory_decrease", decrease)
Events.Connect("inventory_clear", clear)