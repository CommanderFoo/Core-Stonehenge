local visual_rock = script:GetCustomProperty("visual_rock"):WaitForObject()

local total_done = 0

Events.Connect("can_use_catalysts", function()
	Events.BroadcastToServer("enable_catalyst_breakers")
end)

Events.Connect("enable_beam", function()
	total_done = total_done + 1

	if(total_done >= 4) then
		Events.Broadcast("charge_up_energy")
	end
end)

Events.Connect("open_up_cave", function(visual_only)
	if(visual_only) then
		visual_rock.visibility = Visibility.FORCE_OFF
		return
	end

	Events.Broadcast("quest_item_complete", 6)
	Events.BroadcastToServer("open_cave")
	visual_rock.visibility = Visibility.FORCE_OFF
end)