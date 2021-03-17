local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local collectables = script:GetCustomProperty("collectables"):WaitForObject()
local key = script:GetCustomProperty("key")
local items = script:GetCustomProperty("items"):WaitForObject()

local children = items:GetChildren()

local tween = nil

local local_player = Game.GetLocalPlayer()
local is_open = false
local can_open = false

local_player.bindingPressedEvent:Connect(function(p, binding)
	if(can_open and YOOTIL.Input[key] == binding) then
		if(not is_open) then
			show()
			
			Events.BroadcastToServer("disable_player", local_player)
			Events.Broadcast("can_open_inventory", false)
			Events.Broadcast("collectables_open", true)
			UI.SetCanCursorInteractWithUI(true)

			Events.BroadcastToServer("hide_all_interaction_labels")
		else
			close()

			Events.Broadcast("hide_cursor")
			Events.BroadcastToServer("enable_player", local_player)
			Events.Broadcast("can_open_inventory", true)
			Events.Broadcast("collectables_open", false)
			UI.SetCanCursorInteractWithUI(false)
		
			Events.BroadcastToServer("show_all_interaction_labels")
		end
	end
end)

function show()
	if(is_open) then
		return
	end

	tween = YOOTIL.Tween:new(.7, { x = collectables.x }, { x = 30 })
	
	tween:on_change(function(c)
		collectables.x = c.x
	end)

	tween:on_complete(function()
		tween = nil
	end)

	tween:set_easing("outBack")
	is_open = true
end

function close()
	if(not is_open) then
		return
	end

	tween = YOOTIL.Tween:new(.5, { x = collectables.x }, { x = -405 })
	
	tween:on_change(function(c)
		collectables.x = c.x
	end)

	tween:on_complete(function()
		tween = nil
	end)

	tween:set_easing("inBack")
	is_open = false
end

function enable_collectable(id)
	for i, c in ipairs(children) do
		if(tonumber(c.name) == id) then
			c:FindChildByName("Name Hidden").visibility = Visibility.FORCE_OFF
			c:FindChildByName("Desc Hidden").visibility = Visibility.FORCE_OFF

			c:FindChildByName("Name").visibility = Visibility.FORCE_ON
			c:FindChildByName("Desc").visibility = Visibility.FORCE_ON

			c:FindChildByName("Icon"):SetColor(Color.New(1, 1, 1, 1))

			Events.Broadcast("add_notification", {
				
				msg = "\"" .. c:FindChildByName("Name").text .. "\" has been added to your collection.",
				in_time = .5,
				out_time = .5,
				stay_time = 1

			})

			break
		end
	end
end

function Tick(dt)
	if(tween ~= nil) then
		tween:tween(dt)
	end
end

Events.Connect("show_collectables", function(state)
	if(state) then
		show()
	else
		close()
	end
end)

Events.Connect("can_open_collectables", function(state)
	can_open = state
end)

Events.Connect("enable_collectables", function()
	collectables.visibility = Visibility.FORCE_ON
end)

Events.Connect("add_collectable", function(obj_ref)
	local id = obj_ref:GetObject():GetCustomProperty("collectable_id")
	
	enable_collectable(id)
	Events.BroadcastToServer("add_collectable", local_player, id, obj_ref)
end)