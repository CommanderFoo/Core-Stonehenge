local magnify = script:GetCustomProperty("magnify")
local glove = script:GetCustomProperty("glove")
local default = script:GetCustomProperty("default")
local reticle = script:GetCustomProperty("reticle"):WaitForObject()

local local_player = Game.GetLocalPlayer()
local distance = 500

local over_pickup = false
local pickup_obj = nil
local obj_type = nil

local_player.bindingPressedEvent:Connect(function(p, binding)
	if(over_pickup and binding == "ability_primary" and Object.IsValid(pickup_obj)) then
		if(obj_type == "look") then
			Events.Broadcast("inspect_object", pickup_obj:GetReference())
		else
			Events.Broadcast("inventory_add", pickup_obj:GetReference(), true)
			Events.Broadcast("play_sound", "pickup")
		end
	end
end)

function Tick(dt)
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

	if(hit ~= nil and Object.IsValid(hit.other)) then
		local obj = hit.other.parent
		
		print(obj.name)
		obj_type = obj:GetCustomProperty("type")

		if(obj_type and not obj_type:find("sub_")) then
			if(obj_type == "look") then
				img = magnify
			elseif(obj_type == "pickup") then
				img = glove
			end

			over_pickup = true
			pickup_obj = obj

			width = 60
			height = 60
		end
	end

	reticle:SetImage(img)
	reticle.width = width
	reticle.height = height
end

Events.Connect("hide_reticle", function()
	reticle.visibility = Visibility.FORCE_OFF
end)

Events.Connect("show_reticle", function()
	reticle.visibility = Visibility.FORCE_ON
end)