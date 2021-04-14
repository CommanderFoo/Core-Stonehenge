local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local lookup = script:GetCustomProperty("lookup"):WaitForObject()
local slots = script:GetCustomProperty("slots"):WaitForObject()
local key_binding = script:GetCustomProperty("key_binding")
local inventory_ui = script:GetCustomProperty("inventory_ui"):WaitForObject()
local data_holder = script:GetCustomProperty("data_holder"):WaitForObject()
local border = script:GetCustomProperty("border"):WaitForObject()
local corner = script:GetCustomProperty("corner"):WaitForObject()

local border_color = border:GetColor()
local corner_color = corner:GetColor()

local hover_color = script:GetCustomProperty("hover_color")
local unhover_color = script:GetCustomProperty("unhover_color")
local active_color = script:GetCustomProperty("active_color")

local look_helper = script:GetCustomProperty("look_helper"):WaitForObject()
local helper = look_helper:FindChildByName("Helper")

local local_player = Game.GetLocalPlayer()

local_player.clientUserData.inventory = {}

local max_slots = #slots:GetChildren()
local inventory_active = false
local can_open_inventory = false
local active_slot = nil
local is_inspecting = false
local is_interacting = false
local active_looking_obj = nil
local mouse_pressed = false
local tween = nil
local using = false
local inventory_in_tween = nil

for i = 1, max_slots do
	local_player.clientUserData.inventory[i] = {

		data = nil,
		quantity = 0,
		button = slots:GetChildren()[i],
		background = slots:GetChildren()[i]:FindChildByName("Background"),
		icon = nil,
		disabled = false,
		inspecting = false

	}

	local_player.clientUserData.inventory[i].button.hoveredEvent:Connect(function()
		if(local_player.clientUserData.inventory[i].data ~= nil and not local_player.clientUserData.inventory[i].disabled) then
			Events.Broadcast("play_sound", "hover", true)
			
			local_player.clientUserData.inventory[i].background:SetColor(hover_color)

			Events.Broadcast("over_inventory", true)

			local type = "default"

			if((is_inspecting or is_interacting) and local_player.clientUserData.inventory[i].data:GetCustomProperty("can_use")) then
				type = "use"
			else
				if(local_player.clientUserData.inventory[i].data:GetCustomProperty("can_combine")) then
					type = "combine"
				elseif(local_player.clientUserData.inventory[i].data:GetCustomProperty("can_look")) then
					type = "inventory_look"
				end
			end

			Events.Broadcast("show_cursor", type)
		end
	end)

	local_player.clientUserData.inventory[i].button.unhoveredEvent:Connect(function()
		if(local_player.clientUserData.inventory[i].data ~= nil and not local_player.clientUserData.inventory[i].disabled and not local_player.clientUserData.inventory[i].active) then
			local_player.clientUserData.inventory[i].background:SetColor(unhover_color)
		end

		Events.Broadcast("over_inventory", false)
	end)

	local_player.clientUserData.inventory[i].button.clickedEvent:Connect(function()
		if(local_player.clientUserData.inventory[i].data ~= nil and not local_player.clientUserData.inventory[i].disabled) then
			Events.Broadcast("play_sound", "click", true)

			local same_slot = local_player.clientUserData.inventory[i] == active_slot

			if(active_slot and active_slot.inspecting) then
				clean_up_active_data()
			end

			if(not same_slot) then
				local data = local_player.clientUserData.inventory[i].data

				local_player.clientUserData.inventory[i].background:SetColor(active_color)
				local_player.clientUserData.inventory[i].active = true
				active_slot = local_player.clientUserData.inventory[i]
				active_slot.inspecting = true

				if(data:GetCustomProperty("can_use") and is_interacting or is_inspecting) then
					using = true

					Events.Broadcast("override_cursor", "use", local_player.clientUserData.inventory[i].icon.sourceTemplateId)
					Events.Broadcast("using_item", local_player.clientUserData.inventory[i].data)
				elseif(data:GetCustomProperty("can_look")) then
					active_looking_obj = World.SpawnAsset(data:GetCustomProperty("model_asset"))
					active_looking_obj:SetWorldPosition(helper:GetWorldPosition())
					active_looking_obj:SetWorldScale(Vector3.New(0, 0, 0))

					local new_scale = Vector3.New(1, 1, 1)

					if(active_looking_obj:GetCustomProperty("override_scale")) then
						new_scale = active_looking_obj:GetCustomProperty("scale")
					end
					
					tween = YOOTIL.Tween:new(.3, { x = 0, y = 0, z = 0 }, { x = new_scale.x, y = new_scale.y, z = new_scale.z })
					
					tween:on_change(function(c)
						local scale = active_looking_obj:GetWorldScale()

						scale.x = c.x
						scale.y = c.y
						scale.z = c.z

						active_looking_obj:SetWorldScale(scale)
					end)

					tween:on_complete(function()
						tween = nil

						if(data:GetCustomProperty("quest_item_look_id")) then
							Events.Broadcast("quest_item_complete", data:GetCustomProperty("quest_item_look_id"))
						end
					end)
				end
			end
		end
	end)
end

local_player.bindingPressedEvent:Connect(function(p, binding)
	if(binding == "ability_primary") then
		mouse_pressed = true
	end
end)

local_player.bindingReleasedEvent:Connect(function(p, binding)
	if(binding == "ability_primary") then
		mouse_pressed = false
	end
end)

function Tick(dt)
	if(mouse_pressed and active_looking_obj ~= nil) then
		local cur_pos = UI.GetCursorPosition()
		local screen = UI.GetScreenSize()
		local rot = active_looking_obj:GetWorldRotation()
		local screen_pos = UI.GetScreenPosition(active_looking_obj:GetWorldPosition())

		if(screen_pos ~= nil) then
			if(cur_pos.y > (screen_pos.y + 100)) then
				rot.z = rot.z + .7
			elseif(cur_pos.y < (screen_pos.y - 100)) then
				rot.z = rot.z - .7
			end

			if(cur_pos.x > (screen_pos.x + 100)) then
				rot.y = rot.y + .7
			elseif(cur_pos.x < (screen_pos.x - 100)) then
				rot.y = rot.y - .7
			end

			active_looking_obj:SetWorldRotation(rot)
		end
	end

	if(tween ~= nil) then
		tween:tween(dt)
	end

	if(inventory_in_tween ~= nil) then
		inventory_in_tween:tween(dt)
	end
end

function clean_up_active_data()
	if(active_slot ~= nil) then
		if(tween ~= nil) then
			tween = nil
		end

		if(Object.IsValid(active_looking_obj)) then
			active_looking_obj:Destroy()
			active_looking_obj = nil
		end

		if(using) then
			Events.Broadcast("using_item", nil)
			Events.Broadcast("override_cursor", false)
			using = false
		end

		active_slot.inspecting = false
		active_slot.active = false
		active_slot.background:SetColor(unhover_color)
		active_slot = nil
	end
end

function get_free_slot()
	for i, e in ipairs(local_player.clientUserData.inventory) do
		if(e.data == nil) then
			return i, e
		end
	end

	return nil, nil
end

function get_existing_slot(inventory_id)
	for i, e in ipairs(local_player.clientUserData.inventory) do
		if(e.data ~= nil and e.data:GetCustomProperty("id") == inventory_id) then
			return i, e
		end
	end

	return nil, nil
end

function add(obj_ref, q, no_broadcast)
	local id = obj_ref

	if(type(id) == "userdata") then
		id = obj_ref:GetObject().id
	end
	
	local data = get_item_from_lookup(id)
	
	if(data ~= nil and Object.IsValid(data)) then
		local inventory_id = data:GetCustomProperty("id")
		local quantity = q or data:GetCustomProperty("quantity")
		local existing_slot_index, existing_slot_entry = get_existing_slot(inventory_id)

		if(existing_slot_index and existing_slot_entry) then
			increase(obj_ref, quantity, true)
		else
			local free_slot_index, free_slot_entry = get_free_slot()

			if(free_slot_index and free_slot_entry) then
				free_slot_entry.data = data
				free_slot_entry.quantity = quantity
				free_slot_entry.icon = World.SpawnAsset(data:GetCustomProperty("ui_asset"), { parent = free_slot_entry.button })				

				if(inventory_active) then
					enable_slot(free_slot_entry.icon)
				end

				if(data:GetCustomProperty("quest_item_id")) then
					Events.Broadcast("quest_item_complete", data:GetCustomProperty("quest_item_id"))
				end

				if(not no_broadcast) then
					YOOTIL.Events.broadcast_to_server("inventory_add", free_slot_index, inventory_id, quantity, obj_ref, data:GetCustomProperty("remove_from_world"))
				end
			else
				print("We run out of free inventory slots, this shouldn't be possible.")
			end
		end

		update_items()
	end
end

function enable_slot(icon)
	local children = icon:GetChildren()

	for ci, c in ipairs(children) do
		local col = c:GetColor()
		
		col.a = 1

		c:SetColor(col)
	end
end

function increase(obj_ref, quantity, remove_object)
	local id = obj_ref

	if(type(id) == "userdata") then
		id = obj_ref:GetObject().id
	end
	
	local data = get_item_from_lookup(id)

	if(data ~= nil and Object.IsValid(data)) then
		local inventory_id = data:GetCustomProperty("id")
		local quantity = data:GetCustomProperty("quantity") or 1
		local existing_slot_index, existing_slot_entry = get_existing_slot(inventory_id)

		if(existing_slot_index and existing_slot_entry) then
			existing_slot_entry.quantity = existing_slot_entry.quantity + quantity

			if(not remove_object) then
				obj_ref = nil
			end

			--Events.BroadcastToServer("inventory_increase", existing_slot_index, quantity, obj_ref, data:GetCustomProperty("remove_from_world"))
		end
	end
end

function decrease(obj_ref, quantity)
	local id = obj_ref

	if(type(id) == "userdata") then
		id = obj_ref:GetObject().id
	end
	
	local data = get_item_from_lookup(id)

	if(data ~= nil and Object.IsValid(data)) then
		local inventory_id = data:GetCustomProperty("id")
		local quantity = data:GetCustomProperty("quantity")
		local existing_slot_index, existing_slot_entry = get_existing_slot(inventory_id)

		if(existing_slot_index and existing_slot_entry) then
			existing_slot_index.quantity = existing_slot_index.quantity - quantity

			if(existing_slot_entry.quantity <= 0) then
				remove(obj_ref)
			else
				--Events.BroadcastToServer("inventory_decrease", existing_slot_index, quantity)
			end
		end
	end
end

function remove(obj_ref)
	local id = obj_ref

	if(type(id) == "userdata") then
		id = obj_ref:GetObject().id
	end
	
	local data = get_item_from_lookup(id)
	
	if(data ~= nil and Object.IsValid(data)) then
		local inventory_id = data:GetCustomProperty("id")
		local existing_slot_index, existing_slot_entry = get_existing_slot(inventory_id)

		if(existing_slot_index and existing_slot_entry) then
			if(active_slot == existing_slot_entry) then
				active_slot.inspecting = false
				active_slot.active = false
				active_slot.background:SetColor(unhover_color)
				active_slot = nil
			end

			existing_slot_entry.data = nil
			existing_slot_entry.quantity = 0
			existing_slot_entry.icon:Destroy()

			--Events.BroadcastToServer("inventory_remove", existing_slot_index)
		end
	end
end

function clear()
	local_player.clientUserData.inventory = {}
	--Events.BroadcastToServer("inventory_clear")
end

function get_item_from_lookup(muid)
	local children = lookup:GetChildren()
	local id = tostring(muid)
	
	for i = 1, #children do
		local child = lookup:GetChildren()[i]

		if((string.len(id) < 6 and tostring(child:GetCustomProperty("id")) == tostring(id)) or child.name == muid) then
			return child
		end
	end

	return nil
end

function clear_ui()
	for i, item in pairs(items_container:GetChildren()) do
		item:Destroy()
	end
end

function update_items()
	for i = 1, max_slots do
		if(Object.IsValid(local_player.clientUserData.inventory[i].icon)) then
			local children = local_player.clientUserData.inventory[i].icon:GetChildren()
			local alpha = .5

			if((is_inspecting or is_interacting) and local_player.clientUserData.inventory[i].data:GetCustomProperty("can_look") and not local_player.clientUserData.inventory[i].data:GetCustomProperty("can_use")) then
				local_player.clientUserData.inventory[i].disabled = true
				alpha = .5
			else
				if(inventory_active) then
					alpha = 1
				end

				local_player.clientUserData.inventory[i].disabled = false
			end

			for ci, c in ipairs(children) do
				local col = c:GetColor()
				
				col.a = alpha

				c:SetColor(col)
			end
		end
	end
end

function enable_inventory()
	inventory_active = true

	border_color.a = 1
	border:SetColor(border_color)

	corner_color.a = 1
	corner:SetColor(corner_color)

	update_items()
end

function disable_inventory()
	if(player_opened) then
		return
	end

	inventory_active = false

	for i = 1, max_slots do
		if(Object.IsValid(local_player.clientUserData.inventory[i].icon)) then
			local children = local_player.clientUserData.inventory[i].icon:GetChildren()

			for ci, c in ipairs(children) do
				local color = c:GetColor()
				
				color.a = .5

				c:SetColor(color)
			end
		end
	end

	border_color.a = 0.5
	border:SetColor(border_color)

	corner_color.a = 0.5
	corner:SetColor(corner_color)

	clean_up_active_data()
end

function show_inventory()
	inventory_ui.visibility = Visibility.FORCE_ON
	inventory_in_tween = YOOTIL.Tween:new(1, { x = 130 }, { x = -30 })
	
	inventory_in_tween:on_change(function(c)
		inventory_ui.x = c.x
	end)

	inventory_in_tween:on_complete(function()
		inventory_in_tween = nil
	end)

	inventory_in_tween:set_easing("outBack")
end

function hide_inventory()
	inventory_in_tween = YOOTIL.Tween:new(1, { x = -30 }, { x = 130 })
	
	inventory_in_tween:on_change(function(c)
		inventory_ui.x = c.x
	end)

	inventory_in_tween:on_complete(function()
		inventory_in_tween = nil
	end)

	inventory_in_tween:set_easing("inBack")

	clean_up_active_data()
end

local_player.bindingPressedEvent:Connect(function(p, binding)
	if(not is_inspecting and not is_interacting and can_open_inventory and YOOTIL.Input[key_binding] == binding) then
		if(inventory_active) then
			Events.Broadcast("stop_music")
			Events.Broadcast("override_cursor", false)
			disable_inventory()
			Events.Broadcast("hide_cursor")
			YOOTIL.Events.broadcast_to_server("enable_player", local_player)
			UI.SetCanCursorInteractWithUI(false)
			Events.Broadcast("inventory_open", false)
			Events.Broadcast("can_open_collectables", true)
			YOOTIL.Events.broadcast_to_server("show_all_interaction_labels")
		else
			Events.Broadcast("play_music", "menu_inspect_inventory")
			enable_inventory()
			YOOTIL.Events.broadcast_to_server("disable_player", local_player)
			Events.Broadcast("inventory_open", true)
			Events.Broadcast("can_open_collectables", false)
			UI.SetCanCursorInteractWithUI(true)

			YOOTIL.Events.broadcast_to_server("hide_all_interaction_labels")
		end
	end
end)

Events.Connect("inventory_clear_active", clean_up_active_data)
Events.Connect("inventory_add", add)
Events.Connect("inventory_remove", remove)
Events.Connect("inventory_increase", increase)
Events.Connect("inventory_decrease", decrease)
Events.Connect("inventory_clear", clear)
Events.Connect("enable_inventory", enable_inventory)
Events.Connect("disable_inventory", disable_inventory)
Events.Connect("show_inventory", show_inventory)
Events.Connect("hide_inventory", hide_inventory)
Events.Connect("can_open_inventory", function(can_open)
	can_open_inventory = can_open
end)

Events.Connect("inspecting", function(state)
	is_inspecting = state
end)

Events.Connect("interacting", function(state)
	is_interacting = state
end)

Game.playerJoinedEvent:Connect(function(player)
	look_helper:AttachToLocalView()
end)

Events.Connect("inventory_data", function(data)
	if(data) then
		for i, v in pairs(data) do
			add(v.id, v.q)
		end
	end
end)

data_holder.networkedPropertyChangedEvent:Connect(function(obj, prop)
	if(prop == "inventory_data") then
		local data = data_holder:GetCustomProperty("inventory_data")

		if(data) then
			for entry in string.gmatch(data, "([^|]+)") do
				local index, id, quantity = entry:match("([^,]+),([^,]+),([^,]+)")

				add(id, quantity, true)
			end
		end
	end
end)