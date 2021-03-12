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

local quest_tween = nil

function next_quest(broadcast_event_after)
	if(has_quest) then
		remove_current_quest()
	end

	current_quest_id = current_quest_id + 1

	local quest_data = get_quest_from_lookup(current_quest_id)

	if(not quest_data) then
		return
	end

	current_quest_holder = World.SpawnAsset(quest_holder, { parent = quest_container })

	current_quest_title = current_quest_holder:FindChildByName("Quest Title")
	current_quest_title.text = quest_data.quest_title

	current_quest_title:FindChildByName("Line").width = quest_data.quest_line_width
	
	local quest_items = quest_data.children

	local y_offset = 60

	for i = 1, #quest_items do
		local item_data = quest_items[i]
		local item = World.SpawnAsset(quest_item, { parent = current_quest_holder })
		local item_title = item:FindChildByName("Text")

		item_title.text = item_data:GetCustomProperty("title")

		item.y = y_offset
		y_offset = y_offset + 30

		item.width = item_data:GetCustomProperty("line_width")
			
		current_quest_items[item_data:GetCustomProperty("id")] = {

			data = item_data,
			item = item,
			item_title = item_title,
			complete = false

		}
	end

	quest_tween = YOOTIL.Tween:new(.5, { x = -300 }, { x = 80 })
	quest_tween:set_easing("outBack")
	quest_tween:set_delay(quest_data.quest_delay)
	quest_tween:on_change(function(c)
		current_quest_holder.x = c.x
	end)

	quest_tween:on_complete(function()
		if(string.len(quest_data.quest_notification) > 1) then
			Task.Wait(quest_data.quest_notification_delay)
			Events.Broadcast("add_notification", quest_data.quest_notification)
		end

		if(string.len(quest_data.quest_inventory_item) > 1) then
			Events.Broadcast("inventory_add", quest_data.quest_inventory_item)
		end

		if(broadcast_event_after) then
			Events.Broadcast(broadcast_event_after)
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

	quest_tween:set_delay(2)

	has_quest = false
end

function Tick(dt)
	if(quest_tween ~= nil) then
		quest_tween:tween(dt)
	end
end

function mark_quest_item_complete(id)
	if(current_quest_items[id]) then
		current_quest_items[id].item:SetColor(quest_item_complete_color)
		current_quest_items[id].complete = true

		if(is_quest_complete()) then
			remove_current_quest()
			Task.Wait(3)
			next_quest()
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
				children = quest_data:GetChildren()

			}
		end
	end

	return nil
end

Events.Connect("next_quest", next_quest)
Events.Connect("quest_item_complete", mark_quest_item_complete)