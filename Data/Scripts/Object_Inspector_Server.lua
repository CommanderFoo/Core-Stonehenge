Events.Connect("inspector_hide", function(obj_ref)
	obj_ref:GetObject().visibility = Visibility.FORCE_OFF
	obj_ref:GetObject().collision = Collision.FORCE_OFF
end)

Events.Connect("inspector_show", function(obj_ref)
	obj_ref:GetObject().visibility = Visibility.FORCE_ON
	obj_ref:GetObject().collision = Collision.FORCE_ON
end)

Events.Connect("inspector_switch", function(obj_ref, look_ref)
	if(look_ref ~= nil) then
		local look_obj = look_ref:GetObject()

		print(look_ref, look_ref:GetObject())
		--look_obj:GetCustomProperty("alt"):GetObject().visibility = Visibility.FORCE_ON
	end

	local obj = obj_ref:GetObject()
	local main = obj:GetCustomProperty("main"):GetObject()
	local alt = obj:GetCustomProperty("alt")

	main.visibility = Visibility.FORCE_OFF
	main.collision = Collision.FORCE_ON

	if(alt ~= nil) then
		alt:GetObject().visibility = Visibility.INHERIT
		alt:GetObject().collision = Collision.INHERIT
	end

	obj:SetNetworkedCustomProperty("use_alt", true)
end)

Events.Connect("replace_object", function(replacing, with, looking, scale)
	local replacing_obj = replacing:GetObject()
	local obj = World.SpawnAsset(with, { parent = replacing_obj.parent })

	obj:SetPosition(replacing_obj:GetPosition())
	obj:SetRotation(replacing_obj:GetRotation())
	obj:SetScale(scale)

	if(looking) then
		obj.visibility = Visibility.FORCE_OFF
	else
		obj.visibility = Visibility.INHERIT
	end

	replacing_obj:Destroy()
end)