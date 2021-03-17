local red = script:GetCustomProperty("red"):WaitForObject()
local blue = script:GetCustomProperty("blue"):WaitForObject()
local yellow = script:GetCustomProperty("yellow"):WaitForObject()
local white = script:GetCustomProperty("white"):WaitForObject()

Events.Connect("enable_catalyst_breakers", function()
	red.collision = Collision.INHERIT
	blue.collision = Collision.INHERIT
	yellow.collision = Collision.INHERIT
	white.collision = Collision.INHERIT
end)