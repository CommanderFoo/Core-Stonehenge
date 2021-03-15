local collectables = {}

function remove_world_object(obj_ref)
	if(type(obj_ref) == "userdata") then
		local obj = obj_ref:GetObject()
	
		obj:Destroy()
	end
end

function add(player, id, obj_ref)
	remove_world_object(obj_ref)

	collectables[id] = true
end

Events.Connect("add_collectable", add)