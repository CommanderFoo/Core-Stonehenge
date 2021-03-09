local trigger = script:GetCustomProperty("Trigger"):WaitForObject()
local trigger_1 = script:GetCustomProperty("Trigger_1"):WaitForObject()
local trigger_2 = script:GetCustomProperty("Trigger_2"):WaitForObject()

local t1 = false
local t2 = false
local t3 = false

local sent_broadcast = false

function in_trigger(t, p)
	if(not p:IsA("Player")) then
		return
	end

	if(t1 and t2 and t3) then
		if(not sent_broadcast) then
			Events.Broadcast("quest_item_complete", 1)
			sent_broadcast = true
		end
	else
		if(t.name == "Trigger 1") then
			t1 = true
		elseif(t.name == "Trigger 2") then
			t2 = true
		elseif(t.name == "Trigger 3") then
			t3 = true
		end
	end
end

trigger.beginOverlapEvent:Connect(in_trigger)
trigger_1.beginOverlapEvent:Connect(in_trigger)
trigger_2.beginOverlapEvent:Connect(in_trigger)
