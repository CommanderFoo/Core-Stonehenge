local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local portal = script:GetCustomProperty("portal"):WaitForObject()
local ball = script:GetCustomProperty("ball"):WaitForObject()
local end_panel = script:GetCustomProperty("end_panel"):WaitForObject()
local transition = script:GetCustomProperty("transition"):WaitForObject()
local back = script:GetCustomProperty("back"):WaitForObject()
local support_us = script:GetCustomProperty("support_us"):WaitForObject()
local contents = script:GetCustomProperty("contents"):WaitForObject()
local thanks = script:GetCustomProperty("thanks"):WaitForObject()
local look_at = script:GetCustomProperty("look_at"):WaitForObject()
local final_time = script:GetCustomProperty("final_time"):WaitForObject()

local normal_color = script:GetCustomProperty("normal_color")
local hover_color = script:GetCustomProperty("hover_color")
local normal_text_color = script:GetCustomProperty("normal_text_color")
local hover_text_color = script:GetCustomProperty("hover_text_color")

local entering = false
local ball_tween = nil
local transition_tween = nil

local local_player = Game.GetLocalPlayer()

function Tick(dt)
	if(ball_tween ~= nil) then
		ball_tween:tween(dt)
	end

	if(transition_tween ~= nil) then
		transition_tween:tween(dt)
	end
end

local_player.perkChangedEvent:Connect(function(p)
	thanks.visibility = Visibility.FORCE_ON
end)

back.hoveredEvent:Connect(function()
	Events.Broadcast("play_sound", "hover", true)
	back:FindDescendantByName("Background"):SetColor(hover_color)
	back:FindChildByName("Text"):SetColor(hover_text_color)
end)

back.unhoveredEvent:Connect(function()
	back:FindDescendantByName("Background"):SetColor(normal_color)
	back:FindChildByName("Text"):SetColor(normal_text_color)
end)

back.clickedEvent:Connect(function()
	YOOTIL.Events.broadcast_to_server("reload_game")
	Events.Broadcast("play_sound", "click", true)
end)

portal.interactedEvent:Connect(function(t, obj)
	if(obj:IsA("Player") and not entering) then
		YOOTIL.Events.broadcast_to_server("disable_portal", local_player)

		entering = true
		Events.Broadcast("hide_reticle")
		Events.Broadcast("disable_raycast")
		YOOTIL.Events.broadcast_to_server("disable_player", Game.GetLocalPlayer())
		Events.Broadcast("hide_inventory")
		Events.Broadcast("show_collectables", false)
		Events.Broadcast("can_open_collectables", false)
		Events.Broadcast("can_open_inventory", false)
		Events.Broadcast("disable_ocular_device_ui")

		Events.Broadcast("quest_item_complete", 1)

		ball_tween = YOOTIL.Tween:new(6, { s = 4 }, { s = 30 })

		ball_tween:on_change(function(c)
			ball:SetWorldScale(Vector3.New(c.s, c.s, c.s))
		end)

		ball_tween:on_complete(function()
			ball_tween = nil
		end)

		-- End screen

		local trans_color = transition:GetColor()

		transition_tween = YOOTIL.Tween:new(10, {a = 0}, {a = 1})

		transition_tween:on_start(function()
			end_panel.visibility = Visibility.FORCE_ON
		end)

		transition_tween:on_complete(function()
			UI.SetCanCursorInteractWithUI(true)
			Events.Broadcast("move_cursor_top")
			Events.Broadcast("show_cursor")

			transition_tween = nil
			Events.Broadcast("stop_audio")
			contents.visibility = Visibility.FORCE_ON
		end)

		transition_tween:on_change(function(v)
			trans_color.a = v.a
	
			transition:SetColor(trans_color)
		end)

		Events.Broadcast("play_music", "end_game")
	end
end)

Events.Connect("enable_portal", function()
	YOOTIL.Events.broadcast_to_server("enable_portal")
end)

Events.Connect("final_time", function(timer)
	final_time.text = "Your Time: " .. string.format("%.3f Secs", timer)
end)