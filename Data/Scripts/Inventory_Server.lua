local data_holder = script:GetCustomProperty("data_holder"):WaitForObject()

function remove_world_object(obj_ref)
	if(type(obj_ref) == "userdata") then
		local obj = obj_ref:GetObject()
	
		obj:Destroy()
	end
end

function add(player, slot_index, inventory_id, quantity, obj_ref, remove_from_world)
	if(not player.serverUserData.inventory) then
		player.serverUserData.inventory = {}
	end
	
	if(remove_from_world) then
		remove_world_object(obj_ref)
	end

	player.serverUserData.inventory[slot_index] = {
		
		inventory_id = inventory_id,
		quantity = quantity

	}
end

function increase(player, slot_index, quantity, obj_ref, remove_from_world)
	if(not player.serverUserData.inventory) then
		player.serverUserData.inventory = {}
	end

	if(player.serverUserData.inventory[slot_index] ~= nil) then
		if(remove_from_world) then
			remove_world_object(obj_ref)
		end

		player.serverUserData.inventory[slot_index].quantity = player.serverUserData.inventory[slot_index].quantity + quantity
	end
end

function remove(player, slot_index)
	if(not player.serverUserData.inventory) then
		player.serverUserData.inventory = {}
	end

	if(player.serverUserData.inventory[slot_index] ~= nil) then
		player.serverUserData.inventory[slot_index] = nil
	end
end

function decrease(player, slot_index, quantity)
	if(not player.serverUserData.inventory) then
		player.serverUserData.inventory = {}
	end

	if(player.serverUserData.inventory[slot_index] ~= nil) then
		player.serverUserData.inventory[slot_index] = math.max(0, player.serverUserData.inventory[slot_index].quantity - quantity)
	end
end

function clear()
	player.serverUserData.inventory = {}
end


Events.ConnectForPlayer("inventory_add", add)
Events.ConnectForPlayer("inventory_remove", remove)
Events.ConnectForPlayer("inventory_increase", increase)
Events.ConnectForPlayer("inventory_decrease", decrease)
Events.ConnectForPlayer("inventory_clear", clear)

Events.Connect("inventory_send_data", function(player)
	local data = ""

	for i, v in pairs(player.serverUserData.inventory) do
		data = data .. "|" .. tostring(i) .. "," .. tostring(v.inventory_id) .. "," .. tostring(v.quantity)
	end

	data_holder:SetNetworkedCustomProperty("inventory_data", data)
end)