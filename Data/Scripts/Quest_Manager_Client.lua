local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local quest_holder = script:GetCustomProperty("quest_holder")
local quest_item = script:GetCustomProperty("quest_item")
local quest_lookup = script:GetCustomProperty("quest_lookup"):WaitForObject()
local quest_container = script:GetCustomProperty("quest_container"):WaitForObject()
local quest_item_complete_color = script:GetCustomProperty("quest_item_complete_color")

local current_quest_id = 0
local has_quest = false

local current_quest_holder = nil
local current_quest_title = nil
local current_quest_items = {}
local current_quest_data = nil

local quest_tween = nil

function next_quest(id)
	if(has_quest) then
		remove_current_quest()
	end

	if(id == 0) then
		id = 1
	end

	current_quest_id = id or (current_quest_id + 1)

	current_quest_data = get_quest_from_lookup(current_quest_id)

	if(not current_quest_data) then
		return
	end

	if(not id) then
		Events.BroadcastToServer("save", "quest_id", current_quest_id)
	end

	current_quest_holder = World.SpawnAsset(quest_holder, { parent = quest_container })

	current_quest_title = current_quest_holder:FindChildByName("Quest Title")
	current_quest_title.text = current_quest_data.quest_title

	current_quest_title:FindChildByName("Line").width = current_quest_data.quest_line_width
	
	local quest_items = current_quest_data.children

	local y_offset = 55

	for i = 1, #quest_items do
		local item_data = quest_items[i]
		local item = World.SpawnAsset(quest_item, { parent = current_quest_holder })
		local item_title = item:FindChildByName("Text")
		local bullet = item:FindChildByName("Bullet")

		if(item_data:GetCustomProperty("title") ~= "HIDDEN") then
			item_title.text = item_data:GetCustomProperty("title")

			item.y = y_offset
			y_offset = y_offset + 30

			item.width = item_data:GetCustomProperty("line_width")
		else
			item.visibility = Visibility.FORCE_OFF
		end
			
		current_quest_items[item_data:GetCustomProperty("id")] = {

			data = item_data,
			item = item,
			item_title = item_title,
			complete = false,
			bullet = bullet

		}
	end

	quest_tween = YOOTIL.Tween:new(.5, { x = -300 }, { x = 80 })
	quest_tween:set_easing("outBack")
	quest_tween:set_delay(current_quest_data.quest_delay)
	quest_tween:on_change(function(c)
		current_quest_holder.x = c.x
	end)

	quest_tween:on_start(function()
		if(current_quest_data.broadcast_event_on_start and string.len(current_quest_data.broadcast_event_on_start) > 1) then
			Events.Broadcast(current_quest_data.broadcast_event_on_start)
		end
		
		if(current_quest_data.quest_thought_id and current_quest_data.quest_thought_id > 0) then
			Events.Broadcast("add_thought", current_quest_data.quest_thought_id)
		end
	end)

	quest_tween:on_complete(function()
		if(string.len(current_quest_data.quest_notification) > 1) then
			Task.Wait(current_quest_data.quest_notification_delay)
			Events.Broadcast("add_notification", current_quest_data.quest_notification)
		end

		if(string.len(current_quest_data.quest_inventory_item) > 1) then
			Events.Broadcast("inventory_add", current_quest_data.quest_inventory_item)
		end
	end)

	has_quest = true
end

function remove_current_quest()
	current_quest_title = nil
	current_quest_items = {}

	quest_tween = YOOTIL.Tween:new(.5, { x = 80 }, { x = -300 })

	quest_tween:on_change(function(c)
		current_quest_holder.x = c.x
	end)

	quest_tween:set_easing("inBack")

	quest_tween:on_complete(function()
		current_quest_holder:Destroy()
	end)

	current_quest_data = nil
	has_quest = false
end

function Tick(dt)
	if(quest_tween ~= nil) then
		quest_tween:tween(dt)
	end
end

function mark_quest_item_complete(id, delay)
	if(current_quest_items[id]) then
		--current_quest_items[id].item:SetColor(quest_item_complete_color)
		local col = current_quest_items[id].item_title:GetColor()

		col.a = .2

		current_quest_items[id].item_title:SetColor(col)
		current_quest_items[id].bullet:SetColor(col)
		current_quest_items[id].complete = true

		local thought = current_quest_items[id].data:GetCustomProperty("thought_id")
		local notification = current_quest_items[id].data:GetCustomProperty("notification")

		if(thought and thought > 0) then
			Events.Broadcast("add_thought", thought)
		end

		if(notification and string.len(notification) > 1) then
			Events.Broadcast("add_notification", notification)
		end

		if(is_quest_complete()) then
			if(current_quest_data and current_quest_data.broadcast_event_on_complete and string.len(current_quest_data.broadcast_event_on_complete) > 1) then
				Events.Broadcast(current_quest_data.broadcast_event_on_complete)
			end

			remove_current_quest()
			Task.Wait(1)
			next_quest()
			Events.Broadcast("play_sound", "new_quest", true)
		end
	end
end

function is_quest_complete()
	for id, i in pairs(current_quest_items) do
		if(not i.complete) then
			return false
		end
	end

	return true
end

function get_quest_from_lookup(id)
	local children = quest_lookup:GetChildren()

	for i = 1, #children do
		local quest_data = quest_lookup:GetChildren()[i]
		local quest_id = quest_data:GetCustomProperty("quest_id")
		
		if(id == quest_id) then
			return {
				
				quest_id = quest_data:GetCustomProperty("quest_id"),
				quest_title = quest_data:GetCustomProperty("quest_title"),
				quest_line_width = quest_data:GetCustomProperty("quest_line_width"),
				quest_delay = quest_data:GetCustomProperty("quest_delay"),
				quest_notification = quest_data:GetCustomProperty("quest_notification"),
				quest_notification_delay = quest_data:GetCustomProperty("quest_notification_delay"),
				quest_inventory_item = quest_data:GetCustomProperty("quest_inventory_item"),
				quest_thought_id = quest_data:GetCustomProperty("quest_thought_id"),
				broadcast_event_on_start = quest_data:GetCustomProperty("broadcast_event_on_start"),
				broadcast_event_on_complete = quest_data:GetCustomProperty("broadcast_event_on_complete"),
				children = quest_data:GetChildren()

			}
		end
	end

	return nil
end

Events.Connect("next_quest", next_quest)
Events.Connect("quest_item_complete", mark_quest_item_complete)