Events.Connect("inspector_hide", function(obj_ref)
	obj_ref:GetObject().visibility = Visibility.FORCE_OFF
	obj_ref:GetObject().collision = Collision.FORCE_OFF
end)

Events.Connect("inspector_show", function(obj_ref)
	obj_ref:GetObject().visibility = Visibility.FORCE_ON
	obj_ref:GetObject().collision = Collision.FORCE_ON
end)

Events.Connect("inspector_switch", function(obj_ref)
	local obj = obj_ref:GetObject()
	local main = obj:GetCustomProperty("main"):GetObject()
	local alt = obj:GetCustomProperty("alt")

	main.visibility = Visibility.FORCE_OFF
	main.collision = Collision.FORCE_OFF

	if(alt ~= nil) then
		alt:GetObject().visibility = Visibility.INHERIT
		alt:GetObject().collision = Collision.INHERIT
	end

	obj:SetNetworkedCustomProperty("use_alt", true)
end)