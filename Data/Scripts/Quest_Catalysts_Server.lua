local red = script:GetCustomProperty("red"):WaitForObject()
local blue = script:GetCustomProperty("blue"):WaitForObject()
local yellow = script:GetCustomProperty("yellow"):WaitForObject()
local white = script:GetCustomProperty("white"):WaitForObject()

local collider_rock_55b = script:GetCustomProperty("collider_rock_55b"):WaitForObject()
local collider_rock_55a = script:GetCustomProperty("collider_rock_55a"):WaitForObject()


Events.Connect("enable_catalyst_breakers", function()
	red.collision = Collision.INHERIT
	blue.collision = Collision.INHERIT
	yellow.collision = Collision.INHERIT
	white.collision = Collision.INHERIT
end)

Events.Connect("open_cave", function()
	collider_rock_55b.collision = Collision.FORCE_OFF
	collider_rock_55a.collision = Collision.FORCE_OFF
end)