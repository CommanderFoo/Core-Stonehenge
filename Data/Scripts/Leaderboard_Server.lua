local time_lb = script:GetCustomProperty("time")
local collectables_lb = script:GetCustomProperty("collectables")

local started = false
local finished = false
local player = nil

Events.Connect("submit_fastest_time", function(fin)
	if(player ~= nil and player.serverUserData.timer > 0) then
		Events.BroadcastToPlayer(player, "final_time", player.serverUserData.timer)

		if(player.name == "CommanderFoo" or player.name == "BlueClairey") then
			return
		end
		
		if(not fin and Leaderboards.HasLeaderboards()) then
			Leaderboards.SubmitPlayerScore(time_lb, player, player.serverUserData.timer)
		end
	end
end)

Events.Connect("submit_total_collectables", function()
	if(Leaderboards.HasLeaderboards() and player ~= nil) then
		if(player.name == "CommanderFoo" or player.name == "BlueClairey") then
			return
		end

		if(player.serverUserData.collectables and #player.serverUserData.collectables > 0) then
			Leaderboards.SubmitPlayerScore(collectables_lb, player, #player.serverUserData.collectables)
		end
	end
end)

function Tick(dt)
	if(started and not finished) then
		player.serverUserData.timer = player.serverUserData.timer + dt

		--print(player.serverUserData.timer)
	end
end

Events.Connect("stop_timer", function()
	finished = true
end)

Events.Connect("start_timer", function(p)
	player = p

	if(p:GetResource("finished") == 1) then
		finished = true
	else
		started = true
	end
end)