local cameras = {

	["default"] = {
		
		camera = script:GetCustomProperty("default_camera"):WaitForObject(),

	},

	["inspection"] = {
		
		camera = script:GetCustomProperty("inspection_camera"):WaitForObject()

	}

}

local local_player = Game.GetLocalPlayer()

function set_player_camera(cam, lerp, params)
	if(cameras[cam]) then
		if(params) then
			cameras[cam].camera:SetWorldPosition(params.position or Vector3.New(0, 0, 0))
			cameras[cam].camera:SetWorldRotation(params.rotation or Rotation.New(0, 0, 0))
		end

		local_player:SetOverrideCamera(cameras[cam].camera, lerp or .5)
	end
end

function clear_player_camera(lerp)
	local_player:ClearOverrideCamera(lerp or 0)
end

Events.Connect("set_player_camera", set_player_camera)
Events.Connect("clear_player_camera", clear_player_camera)