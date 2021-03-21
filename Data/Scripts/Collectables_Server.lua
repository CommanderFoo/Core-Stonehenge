local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local dig_collectables = script:GetCustomProperty("dig_collectables"):WaitForObject()
local tent_collectables = script:GetCustomProperty("tent_collectables"):WaitForObject()
local lily_collectables = script:GetCustomProperty("lily_collectables"):WaitForObject()
local chamber_collectables = script:GetCustomProperty("chamber_collectables"):WaitForObject()

local data_holder = script:GetCustomProperty("data_holder"):WaitForObject()

local all_collectables = {}

for i, c in ipairs(dig_collectables:GetChildren()) do
	table.insert(all_collectables, #all_collectables + 1, c)
end

for i, c in ipairs(tent_collectables:GetChildren()) do
	table.insert(all_collectables, #all_collectables + 1, c)
end

for i, c in ipairs(lily_collectables:GetChildren()) do
	table.insert(all_collectables, #all_collectables + 1, c)
end

for i, c in ipairs(chamber_collectables:GetChildren()) do
	table.insert(all_collectables, #all_collectables + 1, c)
end

function remove_world_object(obj_ref)
	if(type(obj_ref) == "userdata") then
		local obj = obj_ref:GetObject()
	
		obj:Destroy()
	end
end

function add(player, id, parent_id, obj_ref)
	remove_world_object(obj_ref)

	if(parent_id ~= nil and parent_id > 0) then
		if(not player.serverUserData.group_collectables[parent_id]) then
			player.serverUserData.group_collectables[parent_id] = {}
		end
	
		table.insert(player.serverUserData.group_collectables[parent_id], #player.serverUserData.group_collectables[parent_id] + 1, id)
	else
		table.insert(player.serverUserData.collectables, #player.serverUserData.collectables + 1, id)
	end
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

	if(player.serverUserData.group_collectables) then
		local str = ""
		
		for k, v in pairs(player.serverUserData.group_collectables) do
			str = str .. "|" .. tostring(k)

			for i, c in ipairs(v) do
				str = str .. "," .. tostring(c)

				for ii, cc in ipairs(all_collectables) do
					if(cc:GetCustomProperty("collectable_id") == tonumber(c)) then
						cc.visibility = Visibility.FORCE_OFF
						cc.collision = Collision.FORCE_OFF
					end
				end
			end 
		end

		data_holder:SetNetworkedCustomProperty("group_collectable_data", str)
	end
end)