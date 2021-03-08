local bird_sounds = script:GetCustomProperty("bird_sounds"):WaitForObject()
local pickup_sound = script:GetCustomProperty("pickup_sound"):WaitForObject()

local total_bird_sounds = #bird_sounds:GetChildren()
local bird_sound_task = nil

function play_bird_sounds()
	local play_sound = math.random(1, 100)

	if(play_sound > 40) then
		local total_to_play = math.random(1, total_bird_sounds)
		
		for i = 1, total_to_play do
			bird_sounds:GetChildren()[i]:Play()
		end
	end
end

function stop_bird_sounds()
	for i = 1, total_bird_sounds do
		bird_sounds:GetChildren()[i]:Stop()
	end
end

function random_pitch(sound)
	sound.pitch = math.random(-400, 400)
end

Events.Connect("play_sound", function(type)
	if(type == "pickup") then
		random_pitch(pickup_sound)

		pickup_sound:Play()
	end
end)

Events.Connect("play_bird_sounds", function()
	if(bird_sound_task == nil) then
		bird_sound_task = Task.Spawn(play_bird_sounds)

		bird_sound_task.repeatInterval = 5
		bird_sound_task.repeatCount = -1
	end
end)

Events.Connect("stop_bird_sounds", stop_bird_sounds)