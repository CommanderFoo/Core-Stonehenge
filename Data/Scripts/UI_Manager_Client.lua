local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local dynamic = script:GetCustomProperty("dynamic"):WaitForObject()
local static = script:GetCustomProperty("static"):WaitForObject()
local main_menu = script:GetCustomProperty("main_menu"):WaitForObject()
local ocular_device = script:GetCustomProperty("ocular_device"):WaitForObject()
local ocular_device_icon = script:GetCustomProperty("ocular_device_icon")

local ocular_tween = nil

Events.Connect("hide_main_menu_ui", function()
	main_menu.visibility = Visibility.FORCE_OFF
end)

Events.Connect("hide_dynamic_ui", function()
	dynamic.visibility = Visibility.FORCE_OFF
end)

Events.Connect("hide_static_ui", function()
	static.visibility = Visibility.FORCE_OFF
end)

Events.Connect("show_main_menu_ui", function()
	main_menu.visibility = Visibility.FORCE_ON
end)

Events.Connect("show_dynamic_ui", function()
	dynamic.visibility = Visibility.FORCE_ON
end)

Events.Connect("show_static_ui", function()
	static.visibility = Visibility.FORCE_ON
end)

Events.Connect("add_ocular_ui", function()
	local obj = World.SpawnAsset(ocular_device_icon, { parent = dynamic })

	obj.x = 0
	obj.y = 0

	local screen = UI.GetScreenSize()
	local x = ocular_device.x + (screen.x / 2) - (ocular_device.width / 2)
	local y = ocular_device.y + (screen.y / 2) - (ocular_device.height / 2)

	ocular_tween = YOOTIL.Tween:new(1, { x = 0, y = 0 }, { x = x, y = y })

	ocular_tween:on_change(function(c)
		obj.x = c.x
		obj.y = c.y
	end)

	ocular_tween:on_complete(function()
		ocular_tween = nil
		obj:Destroy()
		ocular_device.visibility = Visibility.FORCE_ON
	end)

	ocular_tween:set_easing("inCirc")
end)

function Tick(dt)
	if(ocular_tween ~= nil) then
		ocular_tween:tween(dt)
	end
end