local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local cave_trigger = script:GetCustomProperty("cave_trigger"):WaitForObject()
local chamber_trigger = script:GetCustomProperty("chamber_trigger"):WaitForObject()
local cave_waypoint_helper = script:GetCustomProperty("cave_waypoint_helper"):WaitForObject()
local cave_waypoint_ui = script:GetCustomProperty("cave_waypoint_ui"):WaitForObject()
local rotator_sound = script:GetCustomProperty("rotator_sound"):WaitForObject()
local success_sound = script:GetCustomProperty("success_sound"):WaitForObject()
local mini = script:GetCustomProperty("mini"):WaitForObject()
local spark_sound = script:GetCustomProperty("spark_sound"):WaitForObject()

local rotators = {

	blue = {
		
		rotator = script:GetCustomProperty("blue_rotator"):WaitForObject(),
		beam = script:GetCustomProperty("blue_beam"):WaitForObject(),
		outline = script:GetCustomProperty("blue_outline"):WaitForObject(),
		current = 0,
		match = 3,
		done = false,
		moving = false,
		end_rot = 270

	},

	white = {
		
		rotator = script:GetCustomProperty("white_rotator"):WaitForObject(),
		beam = script:GetCustomProperty("white_beam"):WaitForObject(),
		outline = script:GetCustomProperty("white_outline"):WaitForObject(),
		current = 0,
		match = 3,
		done = false,
		moving = false,
		end_rot = 180

	},

	yellow = {
		
		rotator = script:GetCustomProperty("yellow_rotator"):WaitForObject(),
		beam = script:GetCustomProperty("yellow_beam"):WaitForObject(),
		outline = script:GetCustomProperty("yellow_outline"):WaitForObject(),
		current = 0,
		match = 1,
		done = false,
		moving = false,
		end_rot = 270

	},

	red = {
		
		rotator = script:GetCustomProperty("red_rotator"):WaitForObject(),
		beam = script:GetCustomProperty("red_beam"):WaitForObject(),
		outline = script:GetCustomProperty("red_outline"):WaitForObject(),
		current = 0,
		match = 2,
		done = false,
		moving = false,
		end_rot = 0

	}

}

local quest_1_complete = false
local quest_2_complete = false

local local_player = Game.GetLocalPlayer()

local offset = 50
local show_cave_waypoint = false

local tweens = {}

cave_trigger.beginOverlapEvent:Connect(function(t, p)
	if(p:IsA("Player")) then
		if(not quest_1_complete) then
			quest_1_complete = true
			Events.Broadcast("quest_item_complete", 1)
			show_cave_waypoint = false
			cave_waypoint_ui.visibility = Visibility.FORCE_OFF
		end
	end
end)

chamber_trigger.beginOverlapEvent:Connect(function(t, p)
	if(p:IsA("Player")) then
		if(not quest_2_complete) then
			quest_2_complete = true
			Events.Broadcast("quest_item_complete", 2)
		end
	end
end)

function Tick(dt)
	for k, t in pairs(tweens) do
		if(t ~= nil) then
			t:tween(dt)
		end
	end

	if(not show_cave_waypoint) then
		return
	end

	local target_pos = cave_waypoint_helper:GetWorldPosition()
	local screen = UI.GetScreenSize()
	local screen_pos = UI.GetScreenPosition(target_pos)

	-- Credit to Team META for the improved code here.
	-- The second half of this handles the issue when screen_pos is nil.
	-- We have no info when the object is behind the camera.  Usually we
	-- can do slope intercept calculations, but there can still be issues.
	-- The else part of this handles that issue in a much less complicated
	-- manner.  So thank Team META for that part of the code - CommanderFoo

	if(screen_pos ~= nil) then
		screen_pos.x = screen_pos.x - screen.x / 2
		screen_pos.y = screen_pos.y - screen.y / 2

		cave_waypoint_ui.x = CoreMath.Clamp(screen_pos.x, -screen.x / 2 + offset, screen.x / 2 - offset)
		cave_waypoint_ui.y = CoreMath.Clamp(screen_pos.y, -screen.y / 2 + offset, screen.y / 2 - offset)
	else
		local player_pos = local_player:GetWorldPosition()
		local point = (target_pos - player_pos)
		local dist = point.sizeSquared

		local view_rot = local_player:GetViewWorldRotation()
        local view_right = Quaternion.New(view_rot):GetRightVector()
        local dir = point:GetNormalized()

        cave_waypoint_ui.x = (view_right .. dir) * (screen.x - 110) / 2
        cave_waypoint_ui.y = screen.y / 2 - offset
	end
end

function play_effects()
	tweens = {}

	for k, r in pairs(rotators) do
		local cur_rot = r.rotator:GetWorldRotation()
		local t = YOOTIL.Tween:new(1, { r = cur_rot.z }, { r = (cur_rot.z + 180) })

		t:on_start(function()
			rotator_sound:Play()
		end)

		t:on_change(function(c)
			cur_rot.z = c.r

			r.rotator:SetWorldRotation(cur_rot)
		end)

		t:on_complete(function()
			local width_tween = YOOTIL.Tween:new(1.5, { w = 0 }, { w = .2 })

			width_tween:on_start(function()
				r.beam.visibility = Visibility.FORCE_ON
			end)
	
			width_tween:on_change(function(c)
				r.beam:SetSmartProperty("Beam Width", c.w)
			end)
	
			width_tween:on_complete(function()
				width_tween = nil

				local mini_scale = YOOTIL.Tween:new(8, { s = 0 }, { s = 5 })

				mini_scale:on_start(function()
					mini.visibility = Visibility.FORCE_ON
				end)

				mini_scale:on_change(function(c)
					mini:SetWorldScale(Vector3.New(c.s, c.s, c.s))
				end)

				table.insert(tweens, mini_scale)

				Task.Spawn(function()
					spark_sound:Play()

					local p = mini:GetWorldPosition()

					local pos_tween = YOOTIL.Tween:new(8, { z = p.z }, { z = -1356.795 })

					pos_tween:on_change(function(c)
						p.z = c.z

						mini:SetWorldPosition(p)
					end)

					pos_tween:on_complete(function()
						Events.Broadcast("quest_item_complete", 3)
					end)

					pos_tween:set_delay(2)

					table.insert(tweens, pos_tween)
				end, 2)
			end)

			table.insert(tweens, width_tween)
		end)

		t:set_delay(.5)

		table.insert(tweens, t)
	end
end

Events.Connect("show_cave_waypoint", function()
	cave_waypoint_ui.visibility = Visibility.FORCE_ON
	show_cave_waypoint = true
end)

Events.Connect("rotate_color", function(color)
	local r = rotators[color]

	if(not r.done and not r.moving) then
		r.moving = true		
		r.current = r.current + 1

		if(r.current == r.match) then
			r.done = true
		end

		local cur_rot = r.rotator:GetWorldRotation()

		local t = YOOTIL.Tween:new(1, { r = cur_rot.z }, { r = (cur_rot.z + 90) })

		t:on_start(function()
			rotator_sound:Play()
		end)

		t:on_change(function(c)
			cur_rot.z = c.r

			r.rotator:SetWorldRotation(cur_rot)
		end)

		t:on_complete(function()
			r.moving = false
			rotation_tween = nil

			if(r.done) then
				r.outline.visibility = Visibility.FORCE_OFF
				success_sound:Play()

				-- Fade in this

				local decals = r.rotator:GetChildren()

				for i, c in ipairs(decals) do
					if(string.lower(c.name) == color) then
						c:SetSmartProperty("Emissive Boost", 7)
					end
				end
			end

			local all_done = true

			for k, v in pairs(rotators) do
				if(not v.done) then
					all_done = false
					break
				end
			end

			if(all_done) then
				play_effects()
			end
		end)

		table.insert(tweens, t)
	end
end)

Events.Connect("enable_portal_effects", function()
	for k, v in pairs(rotators) do
		v.done = true
		v.outline.visibility = Visibility.FORCE_OFF
		
		local rot = v.rotator:GetWorldRotation()

		rot.z = v.end_rot

		v.rotator:SetWorldRotation(rot)

		local decals = v.rotator:GetChildren()

		for i, c in ipairs(decals) do
			if(string.lower(c.name) == k) then
				c:SetSmartProperty("Emissive Boost", 7)
			end
		end

		v.beam:SetSmartProperty("Beam Width", .2)
		v.beam.visibility = Visibility.FORCE_ON

		spark_sound:Play()

		mini.visibility = Visibility.FORCE_ON
		mini:SetWorldScale(Vector3.New(5, 5, 5))

		local m_pos = mini:GetWorldPosition()

		m_pos.z = -1356.795

		mini:SetWorldPosition(m_pos)
	end
end)

Events.Connect("stop_audio", function()
	spark_sound:Stop()
end)