local clear_save_data = script:GetCustomProperty("clear_save_data")
local tent_quest_items = script:GetCustomProperty("tent_quest_items"):WaitForObject()
local excavation_quest_items = script:GetCustomProperty("excavation_quest_items"):WaitForObject()
local lily_quest_items = script:GetCustomProperty("lily_area_quest_items"):WaitForObject()

Game.playerJoinedEvent:Connect(function(player)
	if(not clear_save_data) then
		load_save_data(player)
	end
end)

function clear_data(player)
	player:SetResource("quest_id", 0)
	player:SetResource("ocular_built", 0)

	tent_quest_items.visibility = Visibility.FORCE_ON
	excavation_quest_items.collision = Collision.FORCE_OFF
	lily_quest_items.collision = Collision.FORCE_OFF

	player.serverUserData.inventory = {}
end

function load_save_data(player)
	local data = Storage.GetPlayerData(player) or {}

	data.quest_id = 6

	if(data.quest_id < 3) then
		data.ocular_built = 0
	end

	player:SetResource("quest_id", data.quest_id or 0)
	player:SetResource("ocular_built", data.ocular_built or 0)

	if(data.quest_id > 1) then
		player:SetResource("has_save", 1)
	end

	if(data.ocular_built == 1) then
		tent_quest_items.visibility = Visibility.FORCE_OFF
		tent_quest_items.collision = Collision.FORCE_OFF
	end

	if(data.quest_id == 4) then
		excavation_quest_items.visibility = Visibility.FORCE_OFF
		excavation_quest_items.collision = Collision.FORCE_OFF
	end

	if(data.quest_id == 5) then
		lily_quest_items.visibility = Visibility.FORCE_OFF
		lily_quest_items.collision = Collision.FORCE_OFF
		excavation_quest_items.visibility = Visibility.FORCE_OFF
		excavation_quest_items.collision = Collision.FORCE_OFF
	end

	if(data.quest_id == 6) then
		Events.Broadcast("open_cave")
	end
	
	player.serverUserData.inventory = {}

	if(data.inventory) then
		for i, v in pairs(data.inventory) do
			player.serverUserData.inventory[i] = {
				
				inventory_id = v.id,
				quantity = v.q
			
			}
		end
	end
end

function save_data(player)
	local data = {

		inventory = {},
		collectables = {}

	}

	data.quest_id = player:GetResource("quest_id")
	data.ocular_built = player:GetResource("ocular_built")

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
		Events.Broadcast("inventory_send_data", player)
	end

	Events.BroadcastToPlayer(player, "start_game")
end)