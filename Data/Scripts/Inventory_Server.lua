local inventory = {}

function remove_world_object(obj_ref)
	if(type(obj_ref) == "userdata") then
		local obj = obj_ref:GetObject()
	
		obj:Destroy()
	end
end

function add(player, slot_index, inventory_id, quantity, obj_ref, remove_from_world)
	if(remove_from_world) then
		remove_world_object(obj_ref)
	end

	inventory[slot_index] = {
		
		inventory_id = inventory_id,
		quantity = quantity

	}
end

function increase(player, slot_index, quantity, obj_ref, remove_from_world)
	if(inventory[slot_index] ~= nil) then
		if(remove_from_world) then
			remove_world_object(obj_ref)
		end

		inventory[slot_index].quantity = inventory[slot_index].quantity + quantity
	end
end

function remove(player, slot_index)
	if(inventory[slot_index] ~= nil) then
		inventory[slot_index] = nil
	end
end

function decrease(player, slot_index, quantity)
	if(inventory[slot_index] ~= nil) then
		inventory[slot_index] = math.max(0, inventory[slot_index].quantity - quantity)
	end
end

function clear()
	inventory = {}
end

Events.ConnectForPlayer("inventory_add", add)
Events.ConnectForPlayer("inventory_remove", remove)
Events.ConnectForPlayer("inventory_increase", increase)
Events.ConnectForPlayer("inventory_decrease", decrease)
Events.ConnectForPlayer("inventory_clear", clear)