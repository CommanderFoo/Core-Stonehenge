local cursor_ui = script:GetCustomProperty("cursor_ui"):WaitForObject()
local reticle_ui = script:GetCustomProperty("reticle_ui"):WaitForObject()
local reticle_default_size = script:GetCustomProperty("reticle_default_size")
local cursor_default_size = script:GetCustomProperty("cursor_default_size")
local reticle_big_size = script:GetCustomProperty("reticle_big_size")
local cursor_big_size = script:GetCustomProperty("cursor_big_size")
local inventory_cursor = script:GetCustomProperty("inventory_cursor"):WaitForObject()

local cursor = {

	["look"] = script:GetCustomProperty("look"),
	["pickup"] = script:GetCustomProperty("pickup"),
	["default"] = script:GetCustomProperty("default"),
	["inventory_look"] = script:GetCustomProperty("look"),
	["combine"] = script:GetCustomProperty("combine"),
	["use"] = script:GetCustomProperty("combine")

}

local display_cursor = false
local move_cursor = true
local current_cursor = cursor["default"]
local current_type = "default"
local override = false
local last_cursor = nil
local last_size = false
local tpl = nil

function Tick()
	if(display_cursor) then
		local m_pos = UI.GetCursorPosition()
		local screen = UI.GetScreenSize()

		if(not override) then
			cursor_ui.x = m_pos.x - (screen.x / 2)
			cursor_ui.y = m_pos.y - (screen.y / 2)
		else
			inventory_cursor.x = m_pos.x - (screen.x / 2)
			inventory_cursor.y = m_pos.y - (screen.y / 2)
		end
	else
		if(not override) then
			cursor_ui.x = 0
			cursor_ui.y = 0
		end
	end
end

Events.Connect("show_cursor", function(type)
	if(override) then
		return
	end

	local type = type or "default"

	if(cursor[type]) then
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

		current_type = type
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

Events.Connect("hide_reticle", function()
	reticle_ui.visibility = Visibility.FORCE_OFF
end)

Events.Connect("change_reticle", function(type)
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

Events.Connect("override_cursor", function(type, tpl_id)
	if(not type) then	
		inventory_cursor.visibility = Visibility.FORCE_OFF
		override = false
	else
		if(tpl ~= nil) then
			tpl:Destroy()
		end

		tpl = World.SpawnAsset(tpl_id, { parent = inventory_cursor })

		last_cursor = current_type
		last_size = Vector2.New(cursor_ui.width, cursor_ui.height)

		override = true
		cursor_ui.visibility = Visibility.FORCE_OFF
		inventory_cursor.visibility = Visibility.FORCE_ON
	end
end)