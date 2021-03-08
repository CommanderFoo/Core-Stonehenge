local inventory = {}

function add(player, inventory_id, quantity, obj_ref, remove_from_world)
	if(remove_from_world) then
		local obj = obj_ref:GetObject()
		
		obj:Destroy()
	end

	inventory[inventory_id] = quantity
end

function increase(player, inventory_id, quantity)
	if(inventory[inventory_id] ~= nil) then
		inventory[inventory_id] = inventory[inventory_id] + quantity
	end
end

function remove(player, inventory_id)
	if(inventory[inventory_id] ~= nil) then
		inventory[inventory_id] = nil
	end
end

function decrease(player, inventory_id, quantity)
	if(inventory[inventory_id] ~= nil) then
		inventory[inventory_id] = math.max(0, inventory[inventory_id] - quantity)
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