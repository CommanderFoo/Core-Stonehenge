local local_player = Game.GetLocalPlayer()
local distance = 500

local over_pickup = false
local pickup_obj = nil
local obj_type = nil
local can_raycast = false

local_player.bindingPressedEvent:Connect(function(p, binding)
	if(can_raycast and over_pickup and binding == "ability_primary" and Object.IsValid(pickup_obj)) then
		if(obj_type == "look") then
			Events.Broadcast("inspect_object", pickup_obj:GetReference())
		else
			Events.Broadcast("inventory_add", pickup_obj:GetReference(), true)
			Events.Broadcast("play_sound", "pickup")
		end
	end
end)

function Tick(dt)
	if(not can_raycast) then
		return
	end

	local ray_start = local_player:GetViewWorldPosition()
	local forward = local_player:GetViewWorldRotation() * Vector3.FORWARD
	local ray_end = ray_start + forward * distance
	local hit = World.Raycast(ray_start, ray_end, { ignorePlayers  = true })
	local img = default
	local width = 10
	local height = 10

	over_pickup = false
	pickup_obj = nil
	obj_type = nil

	local reticle = "default"

	if(hit ~= nil and Object.IsValid(hit.other)) then
		local obj = hit.other.parent
		
		obj_type = obj:GetCustomProperty("type")

		if(obj_type and not obj_type:find("sub_")) then
			if(obj_type == "look") then
				reticle = "look"
			elseif(obj_type == "pickup") then
				reticle = "pickup"
			end

			over_pickup = true
			pickup_obj = obj
		end
	end

	Events.Broadcast("change_reticle", reticle)
end

Events.Connect("disable_raycast", function()
	can_raycast = false
end)

Events.Connect("enable_raycast", function()
	can_raycast = true
end)