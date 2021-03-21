local bird_sounds = script:GetCustomProperty("bird_sounds"):WaitForObject()
local pickup_sound = script:GetCustomProperty("pickup_sound"):WaitForObject()

local grove_pulse = script:GetCustomProperty("grove_pulse"):WaitForObject()
local grove_amb = script:GetCustomProperty("grove_amb"):WaitForObject()
local grove_chime = script:GetCustomProperty("grove_chime"):WaitForObject()

local sounds = {

	pickup = script:GetCustomProperty("pickup_sound"):WaitForObject(),
	open_letter = script:GetCustomProperty("open_letter"):WaitForObject(),
	close_letter = script:GetCustomProperty("close_letter"):WaitForObject(),
	click = script:GetCustomProperty("button_click"):WaitForObject(),
	wax_click = script:GetCustomProperty("wax_click"):WaitForObject(),
	hover = script:GetCustomProperty("button_hover"):WaitForObject(),
	dig_ground = script:GetCustomProperty("dig_ground"):WaitForObject(),
	dig_rock = script:GetCustomProperty("dig_rock"):WaitForObject(),
	dig_metal = script:GetCustomProperty("dig_metal"):WaitForObject(),
	catalyst_powered = script:GetCustomProperty("catalyst_powered"):WaitForObject(),
	catalyst_break = script:GetCustomProperty("catalyst_break"):WaitForObject(),
	error = script:GetCustomProperty("error"):WaitForObject(),
	pulse = script:GetCustomProperty("pulse"):WaitForObject(),
	found_item = script:GetCustomProperty("found_item"):WaitForObject(),
	red_hum = script:GetCustomProperty("red_hum"):WaitForObject(),
	blue_hum = script:GetCustomProperty("blue_dum"):WaitForObject(),
	yellow_hum = script:GetCustomProperty("yellow_hum"):WaitForObject(),
	white_hum = script:GetCustomProperty("white_hum"):WaitForObject(),
	new_quest = script:GetCustomProperty("new_quest"):WaitForObject()
}

local music = {

	
	menu_inspect_inventory = script:GetCustomProperty("menu_inspect_inventory_music"):WaitForObject(),
	letter_desk = script:GetCustomProperty("letter_desk_music"):WaitForObject(),
	end_game = script:GetCustomProperty("end_game"):WaitForObject(),
	energy = script:GetCustomProperty("energy"):WaitForObject()

}

local additional_music = nil
local total_bird_sounds = #bird_sounds:GetChildren()
local bird_sound_task = nil
local last_music_played = nil

local local_player = Game.GetLocalPlayer()

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

Events.Connect("play_bird_sounds", function()
	if(bird_sound_task == nil) then
		bird_sound_task = Task.Spawn(play_bird_sounds)

		bird_sound_task.repeatInterval = 5
		bird_sound_task.repeatCount = -1
	end
end)

Events.Connect("stop_bird_sounds", stop_bird_sounds)
Events.Connect("play_sound", function(type, rnd_pitch, move_to_player)
	if(sounds[type]) then
		local snd = sounds[type]

		if(rnd_pitch) then
			random_pitch(snd)
		end

		if(move_to_player) then
			snd:SetWorldPosition(local_player:GetWorldPosition())
		end

		snd:Play()
	end
end)

Events.Connect("stop_additional_music", function()
	if(additional_music ~= nil) then
		additional_music:Stop()
	end	
end)

Events.Connect("play_additional_music", function(type)
	if(additional_music ~= nil) then
		additional_music:Stop()
	end

	additional_music = music[type]
	additional_music:Play()
end)

Events.Connect("play_music", function(type)
	if(music[type]) then
		if(last_music_played ~= nil) then
			if(last_music_played ~= type) then
				music[last_music_played]:Stop()
				music[type]:Play()
			elseif(not music[last_music_played].isPlaying) then
				music[type]:Play()
			end
		else
			music[type]:Play()
		end

		last_music_played = type
	end
end)

Events.Connect("stop_music", function()
	if(last_music_played ~= nil) then
		music[last_music_played]:Stop()
	end
end)

Events.Connect("enable_misc_audio", function()
	grove_pulse:Play()
	grove_amb:Play()
	grove_chime:Play()
end)