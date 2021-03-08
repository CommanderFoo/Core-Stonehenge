local dynamic = script:GetCustomProperty("dynamic"):WaitForObject()
local static = script:GetCustomProperty("static"):WaitForObject()
local main_menu = script:GetCustomProperty("main_menu"):WaitForObject()

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