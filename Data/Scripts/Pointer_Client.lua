local cursor_ui = script:GetCustomProperty("cursor_ui"):WaitForObject()
local reticle_ui = script:GetCustomProperty("reticle_ui"):WaitForObject()
local reticle_default_size = script:GetCustomProperty("reticle_default_size")
local cursor_default_size = script:GetCustomProperty("cursor_default_size")
local reticle_big_size = script:GetCustomProperty("reticle_big_size")
local cursor_big_size = script:GetCustomProperty("cursor_big_size")

local cursor = {

	["look"] = script:GetCustomProperty("look"),
	["pickup"] = script:GetCustomProperty("pickup"),
	["default"] = script:GetCustomProperty("default"),
	["inventory_look"] = script:GetCustomProperty("look"),
	["combine"] = script:GetCustomProperty("combine")

}

local display_cursor = false
local move_cursor = true
local current_cursor = cursor["default"]

function Tick()
	if(display_cursor) then
		local m_pos = UI.GetCursorPosition()
		local screen = UI.GetScreenSize()

		cursor_ui.x = m_pos.x - (screen.x / 2)
		cursor_ui.y = m_pos.y - (screen.y / 2)
	else
		cursor_ui.x = 0
		cursor_ui.y = 0
	end
end

Events.Connect("show_cursor", function(type)
	local type = type or "default"

	if(cursor[type]) then
		--UI.SetCanCursorInteractWithUI(true)

		reticle_ui.visibility = Visibility.FORCE_OFF
		current_cursor = cursor[type]
		cursor_ui.visibility = Visibility.FORCE_ON

		if(type == "default") then
			cursor_ui.width = cursor_default_size.x
			cursor_ui.height = cursor_default_size.y
		else
			cursor_ui.width = cursor_big_size.x
			cursor_ui.height = cursor_big_size.y
		end

		cursor_ui:SetImage(current_cursor)
		display_cursor = true
	end
end)

Events.Connect("hide_cursor", function()
	UI.SetCanCursorInteractWithUI(false)
	display_cursor = false
	cursor_ui.visibility = Visibility.FORCE_OFF
	reticle_ui.visibility = Visibility.FORCE_ON
end)

Events.Connect("change_reticle", function(type)
	display_cursor = false
	cursor_ui.visibility = Visibility.FORCE_OFF

	reticle_ui:SetImage(cursor[type])

	if(type == "default") then
		reticle_ui.width = reticle_default_size.x
		reticle_ui.height = reticle_default_size.y
	else
		reticle_ui.width = reticle_big_size.x
		reticle_ui.height = reticle_big_size.y
	end

	reticle_ui.visibility = Visibility.FORCE_ON
end)