local dig_normal = script:GetCustomProperty("dig_normal"):WaitForObject()
local dig_glowing = script:GetCustomProperty("dig_glowing"):WaitForObject()
local grove_normal = script:GetCustomProperty("grove_normal"):WaitForObject()
local grove_glowing = script:GetCustomProperty("grove_glowing"):WaitForObject()

Events.Connect("show_dig_glowing_flowers", function()
	dig_normal.visibility = Visibility.FORCE_OFF
	dig_glowing.visibility = Visibility.FORCE_ON
end)

Events.Connect("show_grove_glowing_flowers", function()
	grove_normal.visibility = Visibility.FORCE_OFF
	grove_glowing.visibility = Visibility.FORCE_ON
end)