local cursor = script:GetCustomProperty("cursor"):WaitForObject()
local put_down_button = script:GetCustomProperty("put_down_button"):WaitForObject()
local put_down_hover_color = script:GetCustomProperty("put_down_hover_color")
local put_down_unhover_color = script:GetCustomProperty("put_down_unhover_color")

local local_player = Game.GetLocalPlayer()

local obj = nil
local orig_obj = nil
local orig_ref = nil
local mouse_pressed = false
local can_rotate = false
local is_interacting = false
local inventory_open = false
local using_item = nil
local raycast_obj = nil
local zoomed = false

local_player.bindingPressedEvent:Connect(function(p, binding)
	if(binding == "ability_primary") then
		mouse_pressed = true

		use_item()
	end
end)

local_player.bindingReleasedEvent:Connect(function(p, binding)
	if(binding == "ability_primary") then
		mouse_pressed = false
	end
end)

function inspect_object(obj_ref)
	if(inventory_open) then
		return
	end

	Events.Broadcast("inspecting", true)
	Events.Broadcast("enable_inventory")

	if(not is_interacting) then
		Events.BroadcastToServer("disable_player", local_player)
	end

	orig_ref = obj_ref
	orig_obj = obj_ref:GetObject()

	if(using_item and orig_obj:GetCustomProperty("use_with")) then
		return
	end

	obj = World.SpawnAsset(orig_obj.sourceTemplateId)

	obj.collision = Collision.FORCE_OFF

	Events.BroadcastToServer("object_inspector_hide", obj_ref)

	obj:SetWorldPosition(orig_obj:GetWorldPosition())

	local offset = 120

	local obj_pos = orig_obj:GetWorldPosition()
	local view_pos = local_player:GetViewWorldPosition()
	local dir = (view_pos - obj_pos):GetNormalized()
	local move_to_pos = view_pos + dir * -offset

	if((obj_pos - view_pos).size > offset) then
		obj:MoveTo(move_to_pos, .5)
	end
	
	zoomed = true

	UI.SetCanCursorInteractWithUI(true)

	if(not is_interacting) then
		Events.BroadcastToServer("hide_all_interaction_labels")
	end

	put_down_button.visibility = Visibility.FORCE_ON

	if(using_item == nil) then
		can_rotate = true
	end
end

put_down_button.hoveredEvent:Connect(function()
	put_down_button:FindDescendantByName("Background"):SetColor(put_down_hover_color)
end)

put_down_button.unhoveredEvent:Connect(function()
	put_down_button:FindDescendantByName("Background"):SetColor(put_down_unhover_color)
end)

function put_down_object()
	if(obj == nil) then
		return
	end
	
	can_rotate = false

	put_down_button.visibility = Visibility.FORCE_OFF

	mouse_pressed = false

	obj:MoveTo(orig_obj:GetWorldPosition(), .5)
	obj:RotateTo(orig_obj:GetWorldRotation(), .5)

	zoomed = false

	Task.Wait(.5)

	Events.BroadcastToServer("object_inspector_show", orig_ref)
	
	obj:Destroy()
	obj = nil

	orig_ref = nil

	if(not is_interacting and not inventory_open) then
		Events.BroadcastToServer("enable_player", local_player)
		Events.BroadcastToServer("show_all_interaction_labels")
	end
	
	put_down_button.visibility = Visibility.FORCE_OFF

	if(not is_interacting) then
		Events.Broadcast("inspecting", false, inventory_open)

		Events.Broadcast("hide_cursor")
		Events.Broadcast("disable_inventory")
	end
end

put_down_button.clickedEvent:Connect(put_down_object)

function Tick()
	if(mouse_pressed and obj ~= nil and can_rotate) then
		local cur_pos = UI.GetCursorPosition()
		local screen = UI.GetScreenSize()
		local rot = obj:GetWorldRotation()
		local screen_pos = UI.GetScreenPosition(obj:GetWorldPosition())

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

			obj:SetWorldRotation(rot)
		end
	end
end

function use_item()
	print(using_item, orig_obj)

	if(Object.IsValid(using_item) and Object.IsValid(orig_obj)) then
		if(using_item:GetCustomProperty("use_with") == orig_obj.id) then
			Events.Broadcast("inventory_remove", using_item:GetCustomProperty("id"))
			Events.Broadcast("override_cursor", false)
			Events.Broadcast("using_item", nil)

			if(zoomed) then
				Task.Wait(.5)
				can_rotate = true
			end
		end
	end
end

Events.Connect("inspect_object", inspect_object)
Events.Connect("put_down_object", put_down_object)

Events.Connect("inventory_open", function(state)
	inventory_open = state
end)

Events.Connect("clear_inspecting", put_down_object)
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
	raycast_object = obj
	--use_item()
end)