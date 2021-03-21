local waypoint_ui = script:GetCustomProperty("waypoint_ui"):WaitForObject()
local cave_helper = script:GetCustomProperty("cave_helper"):WaitForObject()
local dig_helper = script:GetCustomProperty("dig_helper"):WaitForObject()
local ocular_helper = script:GetCustomProperty("ocular_waypoint"):WaitForObject()
local lily_helper = script:GetCustomProperty("lily_waypoint"):WaitForObject()

local local_player = Game.GetLocalPlayer()

local offset = 50

local current_waypoint_helper = nil

function Tick(dt)
	if(current_waypoint_helper == nil) then
		return
	end

	local target_pos = current_waypoint_helper:GetWorldPosition()
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

		waypoint_ui.x = CoreMath.Clamp(screen_pos.x, -screen.x / 2 + offset, screen.x / 2 - offset)
		waypoint_ui.y = CoreMath.Clamp(screen_pos.y, -screen.y / 2 + offset, screen.y / 2 - offset)
	else
		local player_pos = local_player:GetWorldPosition()
		local point = (target_pos - player_pos)
		local dist = point.sizeSquared

		local view_rot = local_player:GetViewWorldRotation()
        local view_right = Quaternion.New(view_rot):GetRightVector()
        local dir = point:GetNormalized()

        waypoint_ui.x = (view_right .. dir) * (screen.x - 110) / 2
        waypoint_ui.y = screen.y / 2 - offset
	end
end

Events.Connect("show_cave_waypoint", function()
	waypoint_ui.visibility = Visibility.FORCE_ON
	current_waypoint_helper = cave_helper
end)

Events.Connect("show_dig_waypoint", function()
	waypoint_ui.visibility = Visibility.FORCE_ON
	current_waypoint_helper = dig_helper
end)

Events.Connect("show_ocular_waypoint", function()
	waypoint_ui.visibility = Visibility.FORCE_ON
	current_waypoint_helper = ocular_helper
end)

Events.Connect("show_lily_waypoint", function()
	waypoint_ui.visibility = Visibility.FORCE_ON
	current_waypoint_helper = lily_helper
end)

Events.Connect("clear_waypoint", function()
	waypoint_ui.visibility = Visibility.FORCE_OFF
	current_waypoint_helper = nil
end)