local visual_rock_55b = script:GetCustomProperty("visual_rock_55b"):WaitForObject()
local visual_rock_55a = script:GetCustomProperty("visual_rock_55a"):WaitForObject()
local red_outline = script:GetCustomProperty("red_outline"):WaitForObject()
local yellow_outline = script:GetCustomProperty("yellow_outline"):WaitForObject()
local blue_outline = script:GetCustomProperty("blue_outline"):WaitForObject()
local white_outline = script:GetCustomProperty("white_outline"):WaitForObject()

local total_done = 0

Events.Connect("can_use_catalysts", function()
	Events.BroadcastToServer("enable_catalyst_breakers")

	--enable_rock_outlines()
end)

function enable_rock_outlines()
	red_outline:SetSmartProperty("Enabled", true)
	yellow_outline:SetSmartProperty("Enabled", true)
	blue_outline:SetSmartProperty("Enabled", true)
	white_outline:SetSmartProperty("Enabled", true)
end

Events.Connect("disable_red_outline", function()
	red_outline:SetSmartProperty("Enabled", false)
end)

Events.Connect("disable_yellow_outline", function()
	yellow_outline:SetSmartProperty("Enabled", false)
end)

Events.Connect("disable_white_outline", function()
	white_outline:SetSmartProperty("Enabled", false)
end)

Events.Connect("disable_blue_outline", function()
	blue_outline:SetSmartProperty("Enabled", false)
end)

Events.Connect("enable_red_outline", function()
	red_outline:SetSmartProperty("Enabled", true)
end)

Events.Connect("enable_yellow_outline", function()
	yellow_outline:SetSmartProperty("Enabled", true)
end)

Events.Connect("enable_white_outline", function()
	white_outline:SetSmartProperty("Enabled", true)
end)

Events.Connect("enable_blue_outline", function()
	blue_outline:SetSmartProperty("Enabled", true)
end)

Events.Connect("enable_beam", function()
	total_done = total_done + 1

	if(total_done >= 4) then
		Events.Broadcast("charge_up_energy")
	end
end)

Events.Connect("open_up_cave", function(visual_only)
	if(visual_only) then
		visual_rock_55b.visibility = Visibility.FORCE_OFF
		visual_rock_55a.visibility = Visibility.FORCE_OFF
		return
	end

	--Events.Broadcast("quest_item_complete", 6)
	Events.BroadcastToServer("open_cave")
	
	visual_rock_55b.visibility = Visibility.FORCE_OFF
	visual_rock_55a.visibility = Visibility.FORCE_OFF
end)

Events.Connect("enable_rock_outlines", enable_rock_outlines)