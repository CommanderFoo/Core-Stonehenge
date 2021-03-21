local clear_save_data = script:GetCustomProperty("clear_save_data")
local tent_quest_items = script:GetCustomProperty("tent_quest_items"):WaitForObject()
local excavation_quest_items = script:GetCustomProperty("excavation_quest_items"):WaitForObject()
local lily_quest_items = script:GetCustomProperty("lily_area_quest_items"):WaitForObject()

local quest_id = 0

Game.playerJoinedEvent:Connect(function(player)
	if(not clear_save_data) then
		load_save_data(player)
	end
end)

function clear_data(player)
	player:SetResource("quest_id", 0)
	player:SetResource("finished", 0)

	quest_id = 0

	player.serverUserData.timer = 0

	tent_quest_items.visibility = Visibility.FORCE_ON
	excavation_quest_items.collision = Collision.FORCE_OFF
	lily_quest_items.collision = Collision.FORCE_OFF

	player.serverUserData.inventory = {}
	player.serverUserData.collectables = {}
end

function load_save_data(player)
	local data = Storage.GetPlayerData(player) or {}

	data.quest_id = 2

	quest_id = data.quest_id or 0

	player:SetResource("quest_id", quest_id)
	player:SetResource("finished", data.finished or 0)

	player.serverUserData.collectables = {}
	player.serverUserData.timer = data.timer or 0

	if(quest_id > 1) then
		player:SetResource("has_save", 1)
	end
	
	--[[
	player.serverUserData.inventory = {}

	if(data.inventory) then
		for i, v in pairs(data.inventory) do
			player.serverUserData.inventory[i] = {
				
				inventory_id = v.id,
				quantity = v.q
			
			}
		end
	end--]]

	if(data.collectables) then
		for i, v in ipairs(data.collectables) do
			table.insert(player.serverUserData.collectables, #player.serverUserData.collectables + 1, v)
		end
	end
end

function save_data(player)
	Events.Broadcast("submit_total_collectables")

	local data = {

		inventory = {},
		collectables = {}

	}

	data.quest_id = player:GetResource("quest_id")
	data.timer = player.serverUserData.timer or 0
	data.finished = player:GetResource("finished")

	--[[
	if(player.serverUserData.inventory) then
		for i, v in pairs(player.serverUserData.inventory) do
			local save_item = true

			if(data.quest_id == 3 and (v.inventory_id == 3 or v.inventory_id == 4 or v.inventory_id == 11)) then
				save_item = false
			end

			if(data.quest_id == 4 and (v.inventory_id == 5 or v.inventory_id == 6)) then
				save_item = false
			end

			if(save_item) then
				data.inventory[i] = {
					
					id = v.inventory_id,
					q = v.quantity
				
				}
			end
		end
	end--]]
	
	data.collectables = {}

	if(player.serverUserData.collectables) then
		for i, v in ipairs(player.serverUserData.collectables) do
			table.insert(data.collectables, #data.collectables + 1, v)
		end
	end

	Storage.SetPlayerData(player, data)
end

Game.playerLeftEvent:Connect(save_data)

Events.ConnectForPlayer("game_ready", function(player)
	Events.BroadcastToPlayer(player, "transition_to_menu")
end)

Events.ConnectForPlayer("load_game", function(player, i)
	if(i == 2) then
		clear_data(player)
	else
		--Events.Broadcast("inventory_send_data", player)
	end

	if(quest_id > 2) then
		tent_quest_items.visibility = Visibility.FORCE_OFF
		tent_quest_items.collision = Collision.FORCE_OFF
	end

	if(quest_id >= 4) then
		excavation_quest_items.visibility = Visibility.FORCE_OFF
		excavation_quest_items.collision = Collision.FORCE_OFF
	end

	if(quest_id >= 5) then
		lily_quest_items.visibility = Visibility.FORCE_OFF
		lily_quest_items.collision = Collision.FORCE_OFF
		excavation_quest_items.visibility = Visibility.FORCE_OFF
		excavation_quest_items.collision = Collision.FORCE_OFF
	end

	if(quest_id >= 6) then
		Events.Broadcast("open_cave")
	end

	if(quest_id == 7) then
		Events.Broadcast("enable_portal")
	end

	Events.Broadcast("hide_picked_collectables", player)
	
	Events.BroadcastToPlayer(player, "start_game", player:GetResource("quest_id"))
	Events.Broadcast("start_timer", player)
end)

Events.Broadcast("submit_fastest_time")