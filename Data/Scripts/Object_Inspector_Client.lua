local cursor = script:GetCustomProperty("cursor"):WaitForObject()
local put_down_button = script:GetCustomProperty("put_down_button"):WaitForObject()

local local_player = Game.GetLocalPlayer()

local obj = nil
local orig_obj = nil
local orig_ref = nil
local mouse_pressed = false
local can_rotate = false

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

function inspect_object(obj_ref)
	Events.BroadcastToServer("disable_player", local_player)

	orig_ref = obj_ref
	orig_obj = obj_ref:GetObject()

	obj = World.SpawnAsset(orig_obj.sourceTemplateId)

	obj.collision = Collision.FORCE_OFF

	Events.BroadcastToServer("object_inspector_hide", obj_ref)

	obj:SetWorldPosition(orig_obj:GetWorldPosition())
	obj:MoveTo(local_player:GetViewWorldPosition(), 1)

	Task.Wait(.5)
	obj:StopMove()

	UI.SetCanCursorInteractWithUI(true)

	Events.Broadcast("hide_reticle")
	Events.BroadcastToServer("hide_all_interaction_labels")

	cursor.visibility = Visibility.FORCE_ON

	put_down_button.visibility = Visibility.FORCE_ON

	can_rotate = true
end

put_down_button.clickedEvent:Connect(function()
	can_rotate = false

	put_down_button.visibility = Visibility.FORCE_OFF

	mouse_pressed = false

	cursor.visibility = Visibility.FORCE_OFF

	obj:MoveTo(orig_obj:GetWorldPosition(), .5)
	obj:RotateTo(orig_obj:GetWorldRotation(), .5)

	Task.Wait(.5)

	Events.BroadcastToServer("object_inspector_show", orig_ref)
	
	obj:Destroy()
	obj = nil

	orig_ref = nil

	Events.BroadcastToServer("enable_player", local_player)
	Events.BroadcastToServer("enable_all_interaction_labels")
	
	UI.SetCanCursorInteractWithUI(false)

	Events.Broadcast("show_reticle")

	cursor.visibility = Visibility.FORCE_OFF
	put_down_button.visibility = Visibility.FORCE_OFF
end)

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

	if(obj ~= nil) then
		local m_pos = UI.GetCursorPosition()

		cursor.x = m_pos.x
		cursor.y = m_pos.y
	end
end

Events.Connect("inspect_object", inspect_object)