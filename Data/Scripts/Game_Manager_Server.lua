local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

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
	player.serverUserData.group_collectables = {}
end

function load_save_data(player)
	local data = Storage.GetPlayerData(player) or {}

	-- @TODO: disable this

	--data.quest_id = 3

	quest_id = data.quest_id or 0

	player:SetResource("quest_id", quest_id)
	player:SetResource("finished", data.finished or 0)

	player.serverUserData.collectables = {}
	player.serverUserData.group_collectables = {}
	player.serverUserData.timer = data.timer or 0

	if(quest_id > 1) then
		player:SetResource("has_save", 1)
	end

	if(data.v1_collectables) then
		for i, v in ipairs(data.v1_collectables) do
			table.insert(player.serverUserData.collectables, #player.serverUserData.collectables + 1, v)
		end
	end

	if(data.v1_group_collectables) then
		for i, v in pairs(data.v1_group_collectables) do
			player.serverUserData.group_collectables[i] = v
		end
	end

	--YOOTIL.Utils.dump(data)
end

function save_data(player)
	Events.Broadcast("submit_total_collectables")

	local data = {}

	data.quest_id = player:GetResource("quest_id")
	data.timer = player.serverUserData.timer or 0
	data.finished = player:GetResource("finished")
	
	data.v1_collectables = {}

	if(player.serverUserData.collectables) then
		for i, v in ipairs(player.serverUserData.collectables) do
			table.insert(data.v1_collectables, #data.v1_collectables + 1, v)
		end
	end

	data.v1_group_collectables = {}

	if(player.serverUserData.group_collectables) then
		for k, v in pairs(player.serverUserData.group_collectables) do
			data.v1_group_collectables[k] = v
		end
	end
	
	--YOOTIL.Utils.dump(data)

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