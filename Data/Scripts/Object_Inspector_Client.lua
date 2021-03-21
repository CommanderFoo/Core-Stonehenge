local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local cursor = script:GetCustomProperty("cursor"):WaitForObject()
local put_down_button = script:GetCustomProperty("put_down_button"):WaitForObject()
local put_down_hover_color = script:GetCustomProperty("put_down_hover_color")
local put_down_unhover_color = script:GetCustomProperty("put_down_unhover_color")
local spawned_objects = script:GetCustomProperty("spawned_objects"):WaitForObject()
local object_look_offset = script:GetCustomProperty("object_look_offset")
local put_down_text = script:GetCustomProperty("put_down_text"):WaitForObject()

local local_player = Game.GetLocalPlayer()

local look_obj = nil
local orig_obj = nil
local orig_ref = nil
local mouse_pressed = false
local can_rotate = false
local is_interacting = false
local inventory_open = false
local collectables_open = false
local using_item = nil
local raycast_obj = nil
local zoomed = false

local_player.bindingPressedEvent:Connect(function(p, binding)
	if(binding == "ability_primary") then
		mouse_pressed = true

		if(Object.IsValid(orig_obj) and raycast_obj == nil) then
			use_item()
		end
	end
end)

local_player.bindingReleasedEvent:Connect(function(p, binding)
	if(binding == "ability_primary") then
		mouse_pressed = false
	end
end)

function inspect_object(obj_ref)
	if(inventory_open or collectables_open) then
		return
	end

	Events.Broadcast("inspecting", true)
	Events.Broadcast("enable_inventory")
	Events.Broadcast("can_open_collectables", false)

	if(not is_interacting) then
		Events.BroadcastToServer("disable_player", local_player)
		Events.Broadcast("play_music", "menu_inspect_inventory")
	end

	orig_ref = obj_ref
	orig_obj = obj_ref:GetObject()

	if(using_item and orig_obj:GetCustomProperty("use_with") or string.find(orig_obj:GetCustomProperty("type"), "remove")) then
		return
	end

	if(orig_obj:GetCustomProperty("quest_item_id")) then
		Events.Broadcast("quest_item_complete", orig_obj:GetCustomProperty("quest_item_id"))
	end

	look_obj = World.SpawnAsset(orig_obj.sourceTemplateId, { parent = spawned_objects })
	look_obj:GetCustomProperty("main"):GetObject().collision = Collision.FORCE_OFF

	if(orig_obj:GetCustomProperty("use_alt")) then
		local alt = look_obj:GetCustomProperty("alt")

		if(alt) then
			alt:GetObject().visibility = Visibility.INHERIT
			alt:GetObject().collision = Collision.FORCE_OFF

			local main = look_obj:GetCustomProperty("main"):GetObject()

			main.visibility = Visibility.FORCE_OFF
			main.collision = Collision.FORCE_OFF
		end
	end

	Events.BroadcastToServer("inspector_hide", obj_ref)

	look_obj:SetWorldPosition(orig_obj:GetWorldPosition())

	local offset = object_look_offset

	local obj_pos = orig_obj:GetWorldPosition()
	local view_pos = local_player:GetViewWorldPosition()
	local dir = (view_pos - obj_pos):GetNormalized()
	local move_to_pos = view_pos + dir * -offset

	if((obj_pos - view_pos).size > offset) then
		look_obj:MoveTo(move_to_pos, .5)
	end
	
	zoomed = true

	UI.SetCanCursorInteractWithUI(true)

	if(not is_interacting) then
		Events.BroadcastToServer("hide_all_interaction_labels")
	end

	if(orig_obj:GetCustomProperty("name")) then
		put_down_text.text = "Put " .. orig_obj:GetCustomProperty("name") .. " Down"
	end
	
	put_down_button.visibility = Visibility.FORCE_ON

	if(using_item == nil) then
		can_rotate = true
	end
end

put_down_button.hoveredEvent:Connect(function()
	Events.Broadcast("play_sound", "hover", true)
	put_down_button:FindDescendantByName("Background"):SetColor(put_down_hover_color)
end)

put_down_button.unhoveredEvent:Connect(function()
	put_down_button:FindDescendantByName("Background"):SetColor(put_down_unhover_color)
end)

function put_down_object(hide)
	if(look_obj == nil) then
		return
	end
	
	can_rotate = false

	put_down_button.visibility = Visibility.FORCE_OFF

	mouse_pressed = false

	if(hide) then
		look_obj.visibility = Visibility.FORCE_OFF
	else
		look_obj:MoveTo(orig_obj:GetWorldPosition(), .5)
		look_obj:RotateTo(orig_obj:GetWorldRotation(), .5)
	end

	zoomed = false

	if(not hide) then
		Task.Wait(.5)
	end

	if(not hide) then
		Events.BroadcastToServer("inspector_show", orig_ref)
	end
	
	look_obj:Destroy()
	look_obj = nil
	orig_ref = nil
	
	if(not is_interacting and not inventory_open) then
		Events.BroadcastToServer("enable_player", local_player)
		Events.BroadcastToServer("show_all_interaction_labels")
		Events.Broadcast("stop_music")
	end

	if(not is_interacting) then
		Events.Broadcast("inspecting", false, inventory_open)

		Events.Broadcast("hide_cursor")
		Events.Broadcast("disable_inventory")
		Events.Broadcast("can_open_collectables", true)
	end
end

put_down_button.clickedEvent:Connect(function()
	Events.Broadcast("play_sound", "click", true)
	put_down_object()
end)

local hide_tween = nil

function Tick(dt)
	if(mouse_pressed and look_obj ~= nil and can_rotate) then
		local cur_pos = UI.GetCursorPosition()
		local screen = UI.GetScreenSize()
		local rot = look_obj:GetWorldRotation()
		local screen_pos = UI.GetScreenPosition(look_obj:GetWorldPosition())

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

			look_obj:SetWorldRotation(rot)
		end
	end

	if(hide_tween ~= nil) then
		hide_tween:tween(dt)
	end
end

function use_item()
	if(Object.IsValid(using_item)) then
		local obj = orig_obj or raycast_obj

		if(Object.IsValid(obj)) then
			if(using_item:GetCustomProperty("use_with") == obj.id) then
				if(Object.IsValid(look_obj)) then
					look_obj:GetCustomProperty("alt"):GetObject().visibility = Visibility.INHERIT
					look_obj:GetCustomProperty("main"):GetObject().visibility = Visibility.FORCE_OFF
				end

				local type = obj:GetCustomProperty("type")

				if(not string.find(type, "remove")) then
					Events.BroadcastToServer("inspector_switch", obj:GetReference())
					Events.Broadcast("inventory_remove", using_item:GetCustomProperty("id"))
				end

				Events.Broadcast("override_cursor", false)

				-- Special cases
				-- These should not be hardcoded, but time is running out.

				if(using_item:GetCustomProperty("id") == 2) then
					Events.Broadcast("show_dig_waypoint")
					Events.Broadcast("quest_item_complete", 2)
					Events.Broadcast("show_dig_glowing_flowers")
					Events.BroadcastToServer("save", "ocular_built", 1)
					
					local o = look_obj:GetCustomProperty("alt"):GetObject()
					local scale = o:GetWorldScale()
					can_rotate = false

					put_down_button.visibility = Visibility.FORCE_OFF
					
					hide_tween = YOOTIL.Tween:new(.5, { x = scale.x, y = scale.y, z = scale.z }, { x = 0, y = 0, z = 0 })
					hide_tween:on_complete(function()
						o.visibility = Visibility.FORCE_OFF
						put_down_object(true)
						hide_tween = nil
					end)

					hide_tween:on_change(function(c)
						local cur_scale = o:GetWorldScale()

						cur_scale.x = c.x
						cur_scale.y = c.y
						cur_scale.z = c.z

						o:SetWorldScale(cur_scale)
					end)

					hide_tween:set_delay(2)

					Events.Broadcast("add_ocular_ui")
					Events.Broadcast("enable_ocular_device", true)
				elseif(using_item:GetCustomProperty("id") == 11 and string.find(type, "remove")) then
					Events.Broadcast("play_sound", "dig_ground")
					Events.Broadcast("play_sound", "dig_rock")
					Events.Broadcast("play_sound", "dig_metal")

					Events.Broadcast("lily_area_play_vfx")

					Events.BroadcastToServer("inspector_hide", obj:GetReference())
					Events.Broadcast("quest_item_complete", 3)
					Events.Broadcast("inventory_clear_active")
				elseif(using_item:GetCustomProperty("id") == 3 and string.find(type, "remove")) then
					Events.Broadcast("inventory_remove", using_item:GetCustomProperty("id"))
					Events.Broadcast("quest_item_complete", 2)
					Events.Broadcast("inventory_clear_active")
					Events.Broadcast("enable_symbol", "yellow")
					Events.Broadcast("enable_beam", "yellow")
					Events.Broadcast("play_sound", "catalyst_break")
					Events.Broadcast("play_sound", "catalayst_powered")
					Events.Broadcast("disable_yellow_outline")
				elseif(using_item:GetCustomProperty("id") == 4 and string.find(type, "remove")) then
					Events.Broadcast("inventory_remove", using_item:GetCustomProperty("id"))
					Events.Broadcast("quest_item_complete", 3)
					Events.Broadcast("inventory_clear_active")
					Events.Broadcast("enable_symbol", "red")
					Events.Broadcast("enable_beam", "red")
					Events.Broadcast("play_sound", "catalyst_break")
					Events.Broadcast("play_sound", "catalayst_powered")
					Events.Broadcast("disable_red_outline")
				elseif(using_item:GetCustomProperty("id") == 5 and string.find(type, "remove")) then
					Events.Broadcast("inventory_remove", using_item:GetCustomProperty("id"))
					Events.Broadcast("quest_item_complete", 4)
					Events.Broadcast("inventory_clear_active")
					Events.Broadcast("enable_symbol", "blue")
					Events.Broadcast("enable_beam", "blue")
					Events.Broadcast("play_sound", "catalyst_break")
					Events.Broadcast("play_sound", "catalayst_powered")
					Events.Broadcast("disable_blue_outline")
				elseif(using_item:GetCustomProperty("id") == 6 and string.find(type, "remove")) then
					Events.Broadcast("inventory_remove", using_item:GetCustomProperty("id"))
					Events.Broadcast("quest_item_complete", 5)
					Events.Broadcast("inventory_clear_active")
					Events.Broadcast("enable_symbol", "white")
					Events.Broadcast("enable_beam", "white")
					Events.Broadcast("play_sound", "catalyst_break")
					Events.Broadcast("play_sound", "catalayst_powered")
					Events.Broadcast("disable_white_outline")
				elseif(zoomed) then
					Task.Wait(.5)
					can_rotate = true
				end
				
				Events.Broadcast("using_item", nil)
				using_item = nil
				orig_obj = nil
				raycast_obj = nil
			else
				Events.Broadcast("play_sound", "error", true)
			end
		end
	end
end

Events.Connect("inspect_object", inspect_object)
Events.Connect("put_down_object", function()
	put_down_object()
end)

Events.Connect("inventory_open", function(state)
	inventory_open = state
end)

Events.Connect("clear_inspecting", function()
	put_down_object()
end)

Events.Connect("interacting", function(state)
	is_interacting = state
end)

Events.Connect("using_item", function(item)
	using_item = item
	
	if(item) then
		can_rotate = false
	else
		can_rotate = true
	end
end)

Events.Connect("raycast_object", function(obj)
	raycast_obj = obj
	use_item()
end)