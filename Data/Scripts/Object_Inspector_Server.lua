Events.Connect("object_inspector_hide", function(obj_ref)
	obj_ref:GetObject().visibility = Visibility.FORCE_OFF
	obj_ref:GetObject().collision = Collision.FORCE_OFF
end)

Events.Connect("object_inspector_show", function(obj_ref)
	obj_ref:GetObject().visibility = Visibility.FORCE_ON
	obj_ref:GetObject().collision = Collision.FORCE_ON
end)