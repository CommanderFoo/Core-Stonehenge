local dig_collectables = script:GetCustomProperty("dig_collectables"):WaitForObject()
local data_holder = script:GetCustomProperty("data_holder"):WaitForObject()

function remove_world_object(obj_ref)
	if(type(obj_ref) == "userdata") then
		local obj = obj_ref:GetObject()
	
		obj:Destroy()
	end
end

function add(player, id, obj_ref)
	remove_world_object(obj_ref)

	table.insert(player.serverUserData.collectables, #player.serverUserData.collectables + 1, id)
end

Events.Connect("add_collectable", add)
Events.Connect("hide_picked_collectables", function(player)
	if(player.serverUserData.collectables) then
		local str = ""
		
		for k, v in ipairs(player.serverUserData.collectables) do
			for i, c in ipairs(dig_collectables:GetChildren()) do
				if(c:GetCustomProperty("collectable_id") == v) then
					c.visibility = Visibility.FORCE_OFF
					c.collision = Collision.FORCE_OFF

					str = str .. "|" .. tostring(v)
				end
			end
		end

		data_holder:SetNetworkedCustomProperty("collectable_data", str)
	end
end)