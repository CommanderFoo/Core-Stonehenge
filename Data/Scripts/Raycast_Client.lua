local distance = script:GetCustomProperty("distance")

local local_player = Game.GetLocalPlayer()

local ui_raycasting = false
local can_raycast = false
local inventory_open = false
local collectables_open = false
local over_pickup = false
local pickup_obj = nil
local obj_type = nil
local over_inventory = false
local is_inspecting = false
local is_interacting = false
local using_item = nil
local ray_distance = distance

local_player.bindingPressedEvent:Connect(function(p, binding)
	if(can_raycast and binding == "ability_primary" and Object.IsValid(pickup_obj)) then
		if(over_pickup) then
			if(string.find(obj_type, "look") or string.find(obj_type, "remove")) then
				if(not using_item) then
					Events.Broadcast("inspect_object", pickup_obj:GetReference(), is_interacting)
				else
					Events.Broadcast("raycast_object", pickup_obj)
				end
			else
				if(using_item == nil) then
					if(string.find(obj_type, "collectable")) then
						Events.Broadcast("add_collectable", pickup_obj:GetReference())
					else
						Events.Broadcast("inventory_add", pickup_obj:GetReference())
					end

					Events.Broadcast("play_sound", "pickup", true)
				end
			end
		elseif(Object.IsValid(pickup_obj.parent) and pickup_obj.parent.name == "Rotators") then
			Events.Broadcast("rotate_color", string.lower(pickup_obj.name))
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
	elseif(not inventory_open and not collectables_open) then
		local ray_start = local_player:GetViewWorldPosition()
		local forward = local_player:GetViewWorldRotation() * Vector3.FORWARD
		local ray_end = ray_start + forward * ray_distance
		
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
			
			if(not is_interacting and (hit_pos - view_pos).size > ray_distance) then
				valid_cast = false
			end
		end

		if(valid_cast and Object.IsValid(obj)) then
			if(not ui_raycasting and obj.name == "Rotators") then
				obj_type = "rotator"
				pickup_obj = hit.other
				pointer = "pickup"
			else
				obj_type = obj:GetCustomProperty("type")

				if(obj_type) then
					if(string.find(obj_type, "look")) then
						pointer = "look"
					elseif(string.find(obj_type, "pickup")) then
						pointer = "pickup"
					end
		
					if(inventory_open and not inventory_obj and not collectables_open) then
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
	end

	if(not over_inventory) then
		if(not ui_raycasting) then
			Events.Broadcast("change_reticle", pointer)
		else
			Events.Broadcast("show_cursor", pointer)
		end
	end
end

Events.Connect("force_ui_raycast", function()
	ui_raycasting = true
end)

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

Events.Connect("collectables_open", function(state)
	if(state) then
		ui_raycasting = true
	else
		ui_raycasting = false
	end

	collectables_open = state
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

Events.Connect("using_item", function(item)
	using_item = item
end)

Events.Broadcast("set_raycast_distance", function(dist)
	ray_distance = dist
end)

Events.Broadcast("reset_raycast_distance", function()
	ray_distance = distance
end)