local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local interactables = script:GetCustomProperty("interactables"):WaitForObject()

local inspect_cam = script:GetCustomProperty("inspect_cam"):WaitForObject()

local lerp_time = script:GetCustomProperty("lerp_time")
local debug = script:GetCustomProperty("debug")

local back_button = script:GetCustomProperty("back_button"):WaitForObject()
local back_hover_color = script:GetCustomProperty("back_hover_color")
local back_unhover_color = script:GetCustomProperty("back_unhover_color")

local local_player = Game.GetLocalPlayer()

local current_trigger = nil

for k, trigger in ipairs(interactables:FindDescendantsByType("Trigger")) do
	trigger.interactedEvent:Connect(function(obj, player)
		current_trigger = obj

		Events.BroadcastToServer("hide_interaction_label", obj:GetReference())
		Events.Broadcast("interacting", true)
		Events.Broadcast("enable_inventory")
		Events.Broadcast("can_open_collectables", false)
		
		local cam_pos = obj:GetCustomProperty("cam_pos")
		local cam_rot = obj:GetCustomProperty("cam_rot")

		if(debug) then
			if(YOOTIL.Vector3.is_zero(cam_pos)) then
				cam_pos = obj:GetWorldPosition()
			end
		end

		local raycast_distance = obj:GetCustomProperty("raycast_distance")

		if(raycast_distance and raycast_distance > 0) then
			Events.Broadcast("set_raycast_distance", raycast_distance)
		end
		
		Events.Broadcast("set_player_camera", "inspection", lerp_time, {
			
			position = cam_pos,
			rotation = cam_rot
		
		})

		Task.Wait(lerp_time)

		Events.Broadcast("enable_inventory")
		UI.SetCanCursorInteractWithUI(true)
		back_button.visibility = Visibility.FORCE_ON
	end)
end

back_button.hoveredEvent:Connect(function()
	back_button:FindDescendantByName("Background"):SetColor(back_hover_color)
end)

back_button.unhoveredEvent:Connect(function()
	back_button:FindDescendantByName("Background"):SetColor(back_unhover_color)
end)

back_button.clickedEvent:Connect(function()
	Events.Broadcast("reset_raycast_distance")
	Events.Broadcast("put_down_object")
	
	back_button.visibility = Visibility.FORCE_OFF

	Events.Broadcast("clear_player_camera", lerp_time)

	Task.Wait(lerp_time)

	if(current_trigger ~= nil) then
		Events.BroadcastToServer("show_interaction_label", current_trigger:GetReference())
		current_trigger = nil
	end

	Events.Broadcast("interacting", false, inventory_open)
	Events.Broadcast("hide_cursor")
	Events.Broadcast("disable_inventory")
	Events.Broadcast("can_open_collectables", true)
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
end