local local_player = Game.GetLocalPlayer()

local ui_raycasting = false
local can_raycast = false
local distance = 500
local inventory_open = false
local over_pickup = false
local pickup_obj = nil
local obj_type = nil
local over_inventory = false
local is_inspecting = false
local is_interacting = false

local_player.bindingPressedEvent:Connect(function(p, binding)
	if(can_raycast and over_pickup and binding == "ability_primary" and Object.IsValid(pickup_obj)) then
		if(string.find(obj_type, "look")) then
			Events.Broadcast("inspect_object", pickup_obj:GetReference(), is_interacting)
		else
			Events.Broadcast("inventory_add", pickup_obj:GetReference())
			Events.Broadcast("play_sound", "pickup")
		end
	end
end)

function Tick()
	if(not can_raycast) then
		return
	end

	local hit = nil
	
	if(ui_raycasting) then
		hit = UI.GetCursorHitResult()
	elseif(not inventory_open) then
		local ray_start = local_player:GetViewWorldPosition()
		local forward = local_player:GetViewWorldRotation() * Vector3.FORWARD
		local ray_end = ray_start + forward * distance
		
		hit = World.Raycast(ray_start, ray_end, { ignorePlayers  = true })
	end

	local pointer = "default"
	local valid_cast = true
	
	over_pickup = false
	pickup_obj = nil
	obj_type = nil

	local inventory_obj = false

	if(hit ~= nil and Object.IsValid(hit.other)) then
		local obj = hit.other.parent
		
		if(string.find(obj.name, "_inventory")) then
			inventory_obj = true
		end

		if(ui_raycasting) then
			local hit_pos = hit.other:GetWorldPosition()
			local view_pos = local_player:GetViewWorldPosition()
			
			if(not is_interacting and (hit_pos - view_pos).size > distance) then
				valid_cast = false
			end
		end

		if(valid_cast and Object.IsValid(obj)) then
			obj_type = obj:GetCustomProperty("type")

			if(obj_type) then
				if(string.find(obj_type, "look")) then
					pointer = "look"
				elseif(string.find(obj_type, "pickup")) then
					pointer = "pickup"
				end
	
				if(inventory_open and not inventory_obj) then
					pointer = "default"
				else
					over_pickup = true
					pickup_obj = obj

					if(not is_interacting and string.find(obj_type, "sub_")) then
						over_pickup = false
						pickup_obj = nil
						pointer = "default"
					end
				end
			end
		end
	end

	if(not over_inventory) then
		if(not ui_raycasting) then
			Events.Broadcast("change_reticle", pointer)
		else
			Events.Broadcast("show_cursor", pointer)
		end
	end
end

Events.Connect("disable_raycast", function()
	can_raycast = false
end)

Events.Connect("enable_raycast", function()
	can_raycast = true
end)

Events.Connect("inventory_open", function(state)
	if(state) then
		ui_raycasting = true
	else
		ui_raycasting = false
	end

	inventory_open = state
end)

Events.Connect("inspecting", function(state, inventory_state)
	if(state) then
		ui_raycasting = true
	elseif(not inventory_open) then
		ui_raycasting = false
	end

	is_inspecting = state
end)

Events.Connect("interacting", function(state, inventory_state)
	if(state) then
		ui_raycasting = true
	elseif(not inventory_open) then
		ui_raycasting = false
	end

	is_interacting = state
end)

Events.Connect("over_inventory", function(state)
	over_inventory = state
end)