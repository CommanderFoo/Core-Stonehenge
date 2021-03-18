local red = script:GetCustomProperty("red"):WaitForObject()
local blue = script:GetCustomProperty("blue"):WaitForObject()
local yellow = script:GetCustomProperty("yellow"):WaitForObject()
local white = script:GetCustomProperty("white"):WaitForObject()

local collider_rock = script:GetCustomProperty("collider_rock"):WaitForObject()

Events.Connect("enable_catalyst_breakers", function()
	red.collision = Collision.INHERIT
	blue.collision = Collision.INHERIT
	yellow.collision = Collision.INHERIT
	white.collision = Collision.INHERIT
end)

Events.Connect("open_cave", function()
	collider_rock.collision = Collision.FORCE_OFF
end)