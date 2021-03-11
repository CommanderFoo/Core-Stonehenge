local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local interactables = script:GetCustomProperty("interactables"):WaitForObject()

local inspect_cam = script:GetCustomProperty("inspect_cam"):WaitForObject()

local lerp_time = script:GetCustomProperty("lerp_time")
local debug = script:GetCustomProperty("debug")

local back_button = script:GetCustomProperty("back_button"):WaitForObject()
local back_hover_color = script:GetCustomProperty("back_hover_color")
local back_unhover_color = script:GetCustomProperty("back_unhover_color")

local local_player = Game.GetLocalPlayer()
local key_down = false
local hide_label = false
local is_inspecting = false
local current_trigger = nil

local over_pickup = false
local pickup_obj = nil
local obj_type = nil
local over_inventory = false

for k, trigger in ipairs(interactables:FindDescendantsByType("Trigger")) do
	trigger.interactedEvent:Connect(function(obj, player)
		current_trigger = obj

		Events.BroadcastToServer("hide_interaction_label", obj:GetReference())
		Events.Broadcast("hide_cursor")
		
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

		Events.Broadcast("set_player_camera", "inspection", lerp_time, {
			
			position = cam_pos,
			rotation = cam_rot,
			fov = cam_fov
		
		})

		Task.Wait(lerp_time)
		back_button.visibility = Visibility.FORCE_ON
		
		is_inspecting = true
		
		Events.Broadcast("can_open_inventory", false)
		Events.Broadcast("enable_inventory")
		Events.Broadcast("show_cursor")

		UI.SetCanCursorInteractWithUI(true)

		Events.Broadcast("quest_item_complete", 2)
	end)
end

back_button.hoveredEvent:Connect(function()
	back_button:FindDescendantByName("Background"):SetColor(back_hover_color)
end)

back_button.unhoveredEvent:Connect(function()
	back_button:FindDescendantByName("Background"):SetColor(back_unhover_color)
end)

back_button.clickedEvent:Connect(function()
	Events.Broadcast("put_down_object")
	
	back_button.visibility = Visibility.FORCE_OFF

	Events.Broadcast("clear_player_camera", lerp_time)

	Task.Wait(lerp_time)

	if(current_trigger ~= nil) then
		Events.BroadcastToServer("show_interaction_label", current_trigger:GetReference())
		current_trigger = nil
	end

	Events.Broadcast("hide_cursor")
	is_inspecting = false

	Events.Broadcast("enable_raycast")

	Events.Broadcast("can_open_inventory", true)
	Events.Broadcast("disable_inventory")
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
			Events.Broadcast("inspect_object", pickup_obj:GetReference(), true)
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

	if(is_inspecting and not over_inventory) then
		pickup_obj = nil
		obj_type = nil

		local cursor = "default"
		local hit = UI.GetCursorHitResult()

		if(hit ~= nil and Object.IsValid(hit.other)) then
			local parent = hit.other.parent

			if(Object.IsValid(parent)) then
				local obj = hit.other.parent
				
				obj_type = obj:GetCustomProperty("type")
		
				if(obj_type) then
					if(obj_type == "sub_pickup") then
						cursor = "pickup"
					elseif(obj_type == "sub_look") then
						cursor = "look"
					end

					over_pickup = true
					pickup_obj = obj
				end
			end
		end

		Events.Broadcast("show_cursor", cursor)
	end
end

Events.Connect("over_inventory", function(is_over)
	over_inventory = is_over
end)