local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local interactables = script:GetCustomProperty("interactables"):WaitForObject()

local inspect_cam = script:GetCustomProperty("inspect_cam"):WaitForObject()
local default_cam = script:GetCustomProperty("default_cam"):WaitForObject()
local lerp_time = script:GetCustomProperty("lerp_time")
local debug = script:GetCustomProperty("debug")

local back_button = script:GetCustomProperty("back_button"):WaitForObject()

local cursor = script:GetCustomProperty("cursor"):WaitForObject()
local glove = script:GetCustomProperty("glove")
local magnify = script:GetCustomProperty("magnify")

local default_cursor = cursor:GetImage()
local default_cursor_width = cursor.width
local default_cursor_height = cursor.height

local local_player = Game.GetLocalPlayer()
local key_down = false
local hide_label = false
local is_inspecting = false
local current_trigger = nil

local over_pickup = false
local pickup_obj = nil
local obj_type = nil

for k, trigger in ipairs(interactables:FindDescendantsByType("Trigger")) do
	trigger.interactedEvent:Connect(function(obj, player)
		current_trigger = obj
		
		Events.BroadcastToServer("hide_interaction_label", obj:GetReference())
		Events.Broadcast("hide_reticle")
		
		local cam_pos = obj:GetCustomProperty("cam_pos")
		local cam_rot = obj:GetCustomProperty("cam_rot")
		local cam_fov = obj:GetCustomProperty("cam_fov")

		if(debug) then
			if(YOOTIL.Vector3.is_zero(cam_pos)) then
				cam_pos = obj:GetWorldPosition()
			end
		end

		if(cam_fov == 0) then
			cam_fov = default_cam.fieldOfView
		end

		inspect_cam:SetWorldPosition(cam_pos)
		inspect_cam:SetWorldRotation(cam_rot)
		inspect_cam.fieldOfView = cam_fov

		local_player:SetOverrideCamera(inspect_cam, lerp_time)

		Task.Wait(lerp_time)
		back_button.visibility = Visibility.FORCE_ON
		
		is_inspecting = true
		cursor.visibility = Visibility.FORCE_ON

		UI.SetCanCursorInteractWithUI(true)
		--UI.SetCursorVisible(true)
	end)
end

back_button.clickedEvent:Connect(function()
	back_button.visibility = Visibility.FORCE_OFF
	local_player:ClearOverrideCamera(lerp_time)

	Task.Wait(lerp_time)

	if(current_trigger ~= nil) then
		Events.BroadcastToServer("show_interaction_label", current_trigger:GetReference())
		current_trigger = nil
	end

	cursor.visibility = Visibility.FORCE_OFF
	is_inspecting = false

	UI.SetCanCursorInteractWithUI(false)
	UI.SetCursorVisible(false)

	Events.Broadcast("show_reticle")
end)

local_player.bindingPressedEvent:Connect(function(p, binding)
	if(debug and local_player:IsBindingPressed("ability_extra_29")) then -- P
		print("-------")
		print("Position: ", inspect_cam:GetWorldPosition())
		print("Rotation: ", inspect_cam:GetWorldRotation())
		print("Field of View: ", inspect_cam.fieldOfView)
	else
		key_down = true
	end

	if(over_pickup and binding == "ability_primary" and Object.IsValid(pickup_obj)) then
		if(obj_type == "sub_look") then
			print("look")
			Events.Broadcast("inspect_object", pickup_obj:GetReference())
		else
			Events.Broadcast("inventory_add", pickup_obj:GetReference(), true)
			Events.Broadcast("play_sound", "pickup")
		end
	end
end)

local_player.bindingReleasedEvent:Connect(function(p, binding)
	key_down = false
end)

function Tick()
	if(debug and key_down) then
		local pos = inspect_cam:GetWorldPosition()
		local rot = inspect_cam:GetWorldRotation()

		if(local_player:IsBindingPressed("ability_extra_1")) then -- 1
			pos.z = pos.z + 1	
		elseif(local_player:IsBindingPressed("ability_extra_2")) then -- 2
			pos.z = pos.z - 1
		elseif(local_player:IsBindingPressed("ability_extra_3")) then -- 3
			pos.x = pos.x - 1
		elseif(local_player:IsBindingPressed("ability_extra_4")) then -- 4
			pos.x = pos.x + 1
		elseif(local_player:IsBindingPressed("ability_extra_5")) then -- 5
			pos.y = pos.y + 1
		elseif(local_player:IsBindingPressed("ability_extra_6")) then -- 6
			pos.y = pos.y - 1
		elseif(local_player:IsBindingPressed("ability_extra_39")) then -- Z
			rot.x = rot.x - .5
		elseif(local_player:IsBindingPressed("ability_extra_40")) then -- X
			rot.x = rot.x + .5
		elseif(local_player:IsBindingPressed("ability_extra_41")) then -- C
			rot.y = rot.y - .5
		elseif(local_player:IsBindingPressed("ability_extra_42")) then -- V
			rot.y = rot.y + .5
		elseif(local_player:IsBindingPressed("ability_extra_44")) then -- N
			rot.z = rot.z - .5
		elseif(local_player:IsBindingPressed("ability_extra_45")) then -- M
			rot.z = rot.z + .5
		elseif(local_player:IsBindingPressed("ability_extra_37")) then -- K
			inspect_cam.fieldOfView = inspect_cam.fieldOfView + .1
		elseif(local_player:IsBindingPressed("ability_extra_38")) then -- L
			inspect_cam.fieldOfView = inspect_cam.fieldOfView - .1
		end

		inspect_cam:SetWorldPosition(pos)
		inspect_cam:SetWorldRotation(rot)
	end

	if(is_inspecting) then
		local m_pos = UI.GetCursorPosition()

		cursor.x = m_pos.x
		cursor.y = m_pos.y

		local cursor_img = default_cursor
		local cursor_img_width = default_cursor_width
		local cursor_img_height = default_cursor_height

		over_pickup = false
		pickup_obj = nil
		obj_type = nil

		local hit = UI.GetCursorHitResult()

		if(hit ~= nil and Object.IsValid(hit.other)) then
			local parent = hit.other.parent

			if(Object.IsValid(parent)) then
				local obj = hit.other.parent
				
				obj_type = obj:GetCustomProperty("type")
		
				if(obj_type) then
					if(obj_type == "sub_pickup") then
						cursor_img = glove
					elseif(obj_type == "sub_look") then
						cursor_img = magnify
					end

					cursor_img_height = 60
					cursor_img_width = 60

					over_pickup = true
					pickup_obj = obj
				end
			end
		end

		cursor:SetImage(cursor_img)
		cursor.width = cursor_img_width
		cursor.height = cursor_img_height
	end
end