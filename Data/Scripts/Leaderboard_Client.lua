local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local time_entry = script:GetCustomProperty("time_entry")
local time_panel = script:GetCustomProperty("time_panel"):WaitForObject()
local time_lb = script:GetCustomProperty("time_lb")
local collectables_lb = script:GetCustomProperty("collectables_lb")
local collectables_panel = script:GetCustomProperty("collectables_panel"):WaitForObject()
local collectable_entry = script:GetCustomProperty("collectable_entry")

local timer = script:GetCustomProperty("timer"):WaitForObject()

local offset = 0
local counter = 1

for i = 1, 500 do
	local entry = World.SpawnAsset(time_entry, { parent = time_panel })

	entry:FindDescendantByName("Rank").text = tostring(counter)
	entry:FindDescendantByName("Name").text = "----------"
	entry:FindDescendantByName("Time").text = "------"

	entry.y = offset
	offset = offset + 30
	counter = counter + 1
end

local offset = 0
local counter = 1

for i = 1, 500 do
	local entry = World.SpawnAsset(collectable_entry, { parent = collectables_panel })

	entry:FindDescendantByName("Rank").text = tostring(counter)
	entry:FindDescendantByName("Name").text = "----------"
	entry:FindDescendantByName("Count").text = "------"

	entry.y = offset
	offset = offset + 30
	counter = counter + 1
end

local updater = Task.Spawn(function()
	if(Leaderboards.HasLeaderboards()) then
		local times_leaderboard = Leaderboards.GetLeaderboard(time_lb, LeaderboardType.GLOBAL)

		if(times_leaderboard ~= nil) then
			local counter = 1

			for k, v in pairs(times_leaderboard) do
				local entry = time_panel:GetChildren()[counter]

				entry:FindDescendantByName("Rank").text = tostring(counter)
				entry:FindDescendantByName("Name").text = YOOTIL.Utils.truncate(v.name, 16)
				entry:FindDescendantByName("Time").text = string.format("%.3f Secs", v.score)
			
				counter = counter + 1
			end
		end

		local count_leaderboard = Leaderboards.GetLeaderboard(collectables_lb, LeaderboardType.GLOBAL)

		if(count_leaderboard ~= nil) then
			local counter = 1

			for k, v in pairs(count_leaderboard) do
				local entry = collectables_panel:GetChildren()[counter]

				entry:FindDescendantByName("Rank").text = tostring(counter)
				entry:FindDescendantByName("Name").text = YOOTIL.Utils.truncate(v.name, 16)
				entry:FindDescendantByName("Count").text = string.format("%.0f", v.score)
			
				counter = counter + 1
			end
		end
	end
end)

updater.repeatInterval = 15
updater.repeatCount = -1

local client_timer = 0
local started = false
local finished = false

function Tick(dt)
	if(started and not finished) then
		client_timer = client_timer + dt
		timer.text = string.format("Client Timer: %.3f", client_timer)
	end
end

Events.Connect("start_client_timer", function(ct)
	timer.visibility = Visibility.FORCE_ON
	client_timer = ct or 0
	started = true
end)

Events.Connect("stop_client_timer", function()
	finished = true
end)