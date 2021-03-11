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
local is_sub_object = false

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

function inspect_object(obj_ref, sub_object, fov)
	Events.Broadcast("can_open_inventory", false)
	Events.Broadcast("enable_inventory")
	Events.Broadcast("disable_raycast")

	if(not sub_object) then
		Events.BroadcastToServer("disable_player", local_player)
	end

	is_sub_object = sub_object

	orig_ref = obj_ref
	orig_obj = obj_ref:GetObject()

	obj = World.SpawnAsset(orig_obj.sourceTemplateId)

	obj.collision = Collision.FORCE_OFF

	Events.BroadcastToServer("object_inspector_hide", obj_ref)

	obj:SetWorldPosition(orig_obj:GetWorldPosition())

	local offset = 120

	if(fov and fov < 90) then
		offset = 300 - fov
	end

	local obj_pos = orig_obj:GetWorldPosition()
	local view_pos = local_player:GetViewWorldPosition()
	local dir = (view_pos - obj_pos):GetNormalized()
	local move_to_pos = view_pos + dir * -offset

	if((obj_pos - view_pos).size > offset) then
		obj:MoveTo(move_to_pos, .5)
	end
	
	UI.SetCanCursorInteractWithUI(true)
	Events.Broadcast("show_cursor")
	Events.BroadcastToServer("hide_all_interaction_labels")

	put_down_button.visibility = Visibility.FORCE_ON

	can_rotate = true
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

	Task.Wait(.5)

	Events.BroadcastToServer("object_inspector_show", orig_ref)
	
	obj:Destroy()
	obj = nil

	orig_ref = nil

	if(not is_sub_object) then
		Events.BroadcastToServer("enable_player", local_player)
		Events.BroadcastToServer("enable_all_interaction_labels")

		Events.Broadcast("hide_cursor")
	end
	
	put_down_button.visibility = Visibility.FORCE_OFF

	Events.Broadcast("enable_raycast")
	Events.Broadcast("can_open_inventory", true)
	Events.Broadcast("disable_inventory")
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

Events.Connect("inspect_object", inspect_object)
Events.Connect("put_down_object", put_down_object)