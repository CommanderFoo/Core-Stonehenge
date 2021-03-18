local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local camera = script:GetCustomProperty("camera"):WaitForObject()
local target = script:GetCustomProperty("target"):WaitForObject()
local transition_loader = script:GetCustomProperty("transition_loader"):WaitForObject()
local loading = script:GetCustomProperty("loading"):WaitForObject()
local menu_container = script:GetCustomProperty("menu_container"):WaitForObject()

local disabled_color = script:GetCustomProperty("disabled_color")
local normal_color = script:GetCustomProperty("normal_color")
local hover_color = script:GetCustomProperty("hover_color")
local normal_text_color = script:GetCustomProperty("normal_text_color")
local hover_text_color = script:GetCustomProperty("hover_text_color")

local transition_time = script:GetCustomProperty("transition_time")

local overwrite_button = script:GetCustomProperty("overwrite_button"):WaitForObject()

local menu = {
	
	buttons = {
		
		script:GetCustomProperty("continue"):WaitForObject(),
		script:GetCustomProperty("new_game"):WaitForObject(),
		script:GetCustomProperty("options"):WaitForObject(),
		script:GetCustomProperty("credits"):WaitForObject()

	},

	panels = {

		false,
		script:GetCustomProperty("new_game_panel"):WaitForObject(),
		script:GetCustomProperty("options_panel"):WaitForObject(),
		script:GetCustomProperty("credits_panel"):WaitForObject()

	}

}

local local_player = Game.GetLocalPlayer()

local transition_color = transition_loader:GetColor()
local loading_color = loading:GetColor()

local transition_tween = nil

local active_menu = nil
local active_panel = nil

local panel_tween = nil

local_player:SetOverrideCamera(camera, 0)

camera:LookAtContinuous(target)
target:RotateContinuous(Rotation.New(0, 0, 5))

function display_panel(index)
	if(active_panel ~= nil and active_panel ~= index) then
		if(menu.panels[active_panel]) then
			menu.panels[active_panel].visibility = Visibility.FORCE_OFF
		end
	end

	if(active_panel == nil or active_panel ~= index) then
		if(menu.panels[index]) then
			active_panel = index

			local panel = menu.panels[index]

			panel_tween = YOOTIL.Tween:new(.4, {w = 0, h = 0}, {w = panel:GetCustomProperty("width"), h = panel:GetCustomProperty("height")})

			panel_tween:on_start(function()
				panel.width = 0
				panel.height = 0

				local children = panel:GetChildren()

				for i = 1, #children do
					if(children[i]:GetCustomProperty("hide")) then
						children[i].visibility = Visibility.FORCE_OFF
					end
				end

				panel.visibility = Visibility.FORCE_ON
			end)
			
			panel_tween:on_change(function(v)
				panel.width = math.floor(v.w)
				panel.height = math.floor(v.h)
			end)

			panel_tween:on_complete(function()
				local children = panel:GetChildren()

				for i = 1, #children do
					children[i].visibility = Visibility.FORCE_ON
				end

				panel_tween = nil
			end)

			panel_tween:set_easing("inExpo")
		else
			active_panel = nil
		end
	end
end

overwrite_button.clickedEvent:Connect(function()
	Events.Broadcast("play_sound", "click", true)
	load_game(2)
end)

overwrite_button.hoveredEvent:Connect(function()
	Events.Broadcast("play_sound", "hover", true)
	overwrite_button:FindDescendantByName("Background"):SetColor(hover_color)
	overwrite_button:FindChildByName("Text"):SetColor(hover_text_color)
end)

overwrite_button.unhoveredEvent:Connect(function()
	overwrite_button:FindDescendantByName("Background"):SetColor(normal_color)
	overwrite_button:FindChildByName("Text"):SetColor(normal_text_color)
end)

for i, b in ipairs(menu.buttons) do
	local top_layer = b:FindDescendantByName("Top Layer")
	local bottom_layer = b:FindDescendantByName("Bottom Layer")
	local top_images = top_layer:GetChildren()
	local bottom_split = bottom_layer:FindDescendantByName("Bottom Split")
	local top_split = top_layer:FindDescendantByName("Top Split")
	local label = top_layer:FindDescendantByName("Label")

	b.clickedEvent:Connect(function()
		if(not b.isInteractable) then
			return
		end

		if(active_menu ~= nil and active_menu.id ~= b.id) then
			active_menu.top.x = 132
			active_menu.bottom.x = 136

			for i = 1, #active_menu.top_images do
				if(active_menu.top_images[i].type == "UIImage") then
					active_menu.top_images[i]:SetColor(normal_color)
				end
			end

			active_menu.label:SetColor(normal_text_color)
		end

		active_menu = {

			bottom = bottom_split, 
			top = top_split,
			top_images = top_images,
			label = label,
			id = b.id

		}

		Events.Broadcast("play_sound", "click", true)

		if(i == 2) then
			if(local_player:GetResource("has_save") == 0) then
				if(menu.panels[active_panel]) then
					menu.panels[active_panel].visibility = Visibility.FORCE_OFF
				end

				load_game(i)

				return
			end
		elseif(i == 1) then
			load_game(i)
		end

		display_panel(i)
	end)

	b.hoveredEvent:Connect(function()
		if(not b.isInteractable) then
			return
		end

		Events.Broadcast("play_sound", "hover", true)

		for i = 1, #top_images do
			if(top_images[i].type == "UIImage") then
				top_images[i]:SetColor(hover_color)
			end
		end

		label:SetColor(hover_text_color)

		top_split.x = 140
		bottom_split.x = 144
	end)

	b.unhoveredEvent:Connect(function()
		if(not b.isInteractable) then
			return
		end

		if(active_menu ~= nil and active_menu.id == b.id) then
			return
		end

		for i = 1, #top_images do
			if(top_images[i].type == "UIImage") then
				top_images[i]:SetColor(normal_color)
			end
		end

		label:SetColor(normal_text_color)

		if(active_menu == nil or active_menu.id ~= b.id) then
			top_split.x = 132
			bottom_split.x = 136
		end
	end)
end

function load_game(i)
	transition_tween = YOOTIL.Tween:new(transition_time, {a = 0}, {a = 1})

	transition_tween:on_start(function()
		Events.Broadcast("hide_cursor")
		Events.Broadcast("hide_reticle")

		transition_loader.visibility = Visibility.FORCE_ON
	end)

	transition_tween:on_complete(function()
		transition_tween = nil
		
		menu_container.visibility = Visibility.FORCE_OFF

		local_player:ClearOverrideCamera(0)

		camera:StopRotate()
		target:StopRotate()

		Events.BroadcastToServer("load_game", i)
	end)

	transition_tween:on_change(function(v)
		transition_color.a = v.a
		loading_color.a = v.a

		transition_loader:SetColor(transition_color)
		loading:SetColor(loading_color)
	end)
end

function Tick(dt)
	if(transition_tween ~= nil) then
		transition_tween:tween(dt)
	end

	if(panel_tween ~= nil) then
		panel_tween:tween(dt)
	end
end

Events.Connect("transition_to_menu", function()
	Events.Broadcast("play_music", "menu_inspect_inventory")

	if(local_player:GetResource("has_save") == 0) then
		menu.buttons[1].isInteractable = false
		menu.buttons[1]:FindDescendantByName("Label"):SetColor(disabled_color)
	end

	transition_tween = YOOTIL.Tween:new(transition_time, {a = 1}, {a = 0})

	transition_tween:on_complete(function()
		transition_loader.visibility = Visibility.FORCE_OFF

		UI.SetCanCursorInteractWithUI(true)
		Events.Broadcast("show_cursor")

		transition_tween = nil
	end)

	transition_tween:on_change(function(v)
		transition_color.a = v.a
		loading_color.a = v.a

		transition_loader:SetColor(transition_color)
		loading:SetColor(loading_color)
	end)
end)