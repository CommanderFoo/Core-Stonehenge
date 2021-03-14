local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local letter_container = script:GetCustomProperty("letter_container"):WaitForObject()
local lid = script:GetCustomProperty("lid"):WaitForObject()
local seal = script:GetCustomProperty("seal"):WaitForObject()
local letter = script:GetCustomProperty("letter"):WaitForObject()
local button = script:GetCustomProperty("button"):WaitForObject()
local front = script:GetCustomProperty("front"):WaitForObject()
local close_button = script:GetCustomProperty("close_button"):WaitForObject()
local close_bg = script:GetCustomProperty("close_bg"):WaitForObject()
local close_x = script:GetCustomProperty("close_x"):WaitForObject()
local location = script:GetCustomProperty("location"):WaitForObject()

local local_player = Game.GetLocalPlayer()

local can_click = false

local lid_start_pos = lid.y

-- Opening

local wax_tween = nil
local lid_open_tween = nil
local letter_open_up_tween = nil
local letter_open_down_tween = nil
local container_up_tween = nil
local close_button_tween = nil

-- Closing

local lid_close_tween = nil
local letter_close_up_tween = nil
local letter_close_down_tween = nil
local container_down_tween = nil

-- Location

local location_in_tween = nil
local location_out_tween = nil

close_button.clickedEvent:Connect(function()
	close_button.visibility = Visibility.FORCE_OFF
	
	-- Letter up

	letter_close_up_tween = YOOTIL.Tween:new(.7, { y = letter.y }, { y = letter.y - (letter.height - 160) })

	letter_close_up_tween:on_change(function(c)
		letter.y = math.floor(c.y)
	end)

	letter_close_up_tween:set_easing("outQuint")

	letter_close_up_tween:on_complete(function()
		front.parent = letter_container
		letter_close_up_tween = nil

		letter_close_down_tween = YOOTIL.Tween:new(.7, { y = letter.y }, { y = 0 })

		letter_close_down_tween:on_change(function(c)
			letter.y = c.y
		end)

		letter_close_down_tween:on_complete(function()
			letter_close_down_tween = nil
			lid.parent = letter_container

			lid_close_tween = YOOTIL.Tween:new(.5, { y = lid.y }, { y = lid_start_pos })

			lid_close_tween:on_change(function(c)
				lid.y = c.y
			end)

			lid_close_tween:on_complete(function()
				--Events.Broadcast("force_ui_raycast")
				--Events.Broadcast("enable_raycast")	

				Events.Broadcast("quest_item_complete", 1)
	
				lid_close_tween = nil

				container_down_tween = YOOTIL.Tween:new(.6, { y = 0 }, { y = UI.GetScreenSize().y + letter_container.height })

				container_down_tween:on_change(function(c)
					letter_container.y = c.y
				end)

				container_down_tween:on_complete(function()
					container_down_tween = nil
					letter_container.visibility = Visibility.FORCE_OFF

					Events.Broadcast("hide_cursor")
					Events.Broadcast("enable_raycast")
					Events.BroadcastToServer("enable_player", local_player, "unarmed_stance")
					Events.Broadcast("show_inventory")
					Events.Broadcast("can_open_inventory", true)
					Events.Broadcast("set_weather_profile", "daytime")

				end)
			end)
		end)

		letter_close_down_tween:set_easing("inQuint")
	end)
end)

button.clickedEvent:Connect(function()
	
	-- Wax tween

	wax_tween = YOOTIL.Tween:new(.85, { x = seal.x, y = seal.y }, { x = seal.x + 140, y = seal.y + UI.GetScreenSize().y })
	
	wax_tween:on_change(function(c)
		seal.x = math.floor(c.x)
		seal.y = math.floor(c.y)
	end)

	wax_tween:on_complete(function()
		wax_tween = nil
		
		-- Lid tween

		lid_open_tween = YOOTIL.Tween:new(.5, { y = lid.y }, { y = lid.y - (lid.height - 15) })

		lid_open_tween:on_change(function(c)
			lid.y = c.y
		end)

		lid_open_tween:on_complete(function()
			lid_open_tween = nil
			letter.parent = letter_container
			front.parent = letter_container

			-- Letter tween up

			letter_open_up_tween = YOOTIL.Tween:new(.7, { y = letter.y }, { y = letter.y - (letter.height - 160) })

			letter_open_up_tween:on_change(function(c)
				letter.y = c.y
			end)

			letter_open_up_tween:on_complete(function()
				letter_open_up_tween = nil

				Events.Broadcast("quest_item_complete", 1)

				letter.parent = letter_container

				-- Letter tween down

				letter_open_down_tween = YOOTIL.Tween:new(.7, { y = letter.y }, { y = 0 })

				letter_open_down_tween:on_change(function(c)
					letter.y = c.y
				end)

				letter_open_down_tween:on_complete(function()
					letter_open_down_tween = nil

					Task.Wait(3)

					-- Fade in close letter button

					close_button_tween = YOOTIL.Tween:new(.6, { a = 0, a2 = 0 }, { a = .7, a2 = 1 })

					close_button_tween:on_start(function()
						close_button.parent = letter_container
						close_button.visibility = Visibility.FORCE_ON
					end)

					close_button_tween:on_change(function(c)
						local bg_color = close_bg:GetColor()
						local x_color = close_x:GetColor()

						bg_color.a = c.a
						x_color.a = c.a2

						close_bg:SetColor(bg_color)
						close_x:SetColor(x_color)
					end)

					close_button_tween:on_complete(function()
						close_button_tween = nil
					end)
				end)
			end)

			letter_open_up_tween:set_easing("inQuint")
		end)

		lid_open_tween:set_easing("inQuint")
	end)

	wax_tween:set_easing("inBack", 2)
end)

function Tick(dt)
	if(container_up_tween ~= nil) then
		container_up_tween:tween(dt)
	end

	if(wax_tween ~= nil) then
		wax_tween:tween(dt)
	end

	if(lid_open_tween ~= nil) then
		lid_open_tween:tween(dt)
	end

	if(letter_open_up_tween ~= nil) then
		letter_open_up_tween:tween(dt)
	end

	if(letter_open_down_tween ~= nil) then
		letter_open_down_tween:tween(dt)
	end

	if(close_button_tween ~= nil) then
		close_button_tween:tween(dt)
	end

	-- Closing tweens

	if(lid_close_tween ~= nil) then
		lid_close_tween:tween(dt)
	end

	if(letter_close_up_tween ~= nil) then
		letter_close_up_tween:tween(dt)
	end

	if(letter_close_down_tween ~= nil) then
		letter_close_down_tween:tween(dt)
	end

	if(container_down_tween ~= nil) then
		container_down_tween:tween(dt)
	end

	-- Location

	if(location_in_tween ~= nil) then
		location_in_tween:tween(dt)
	end

	if(location_out_tween ~= nil) then
		location_out_tween:tween(dt)
	end
end

Events.Connect("show_letter", function()
	Events.Broadcast("set_weather_profile", "sunrise")
	Events.Broadcast("disable_raycast")

	UI.SetCanCursorInteractWithUI(true)

	container_up_tween = YOOTIL.Tween:new(.9, { y = UI.GetScreenSize().y + letter_container.height }, { y = 0 })

	container_up_tween:on_change(function(c)
		letter_container.y = c.y
	end)

	container_up_tween:on_start(function()
		letter_container.visibility = Visibility.FORCE_ON
		letter_container.y = UI.GetScreenSize().y
	end)

	container_up_tween:on_complete(function()
		container_up_tween = nil
		can_click = true
		Events.Broadcast("show_cursor")
	end)

	container_up_tween:set_easing("outQuint")
	container_up_tween:set_delay(.5)

	Events.Broadcast("next_quest")

	-- Location

	location_in_tween = YOOTIL.Tween:new(3, { a = 0 }, { a = 1 })

	location_in_tween:on_change(function(c)
		local col = location:GetColor()

		col.a = c.a

		location:SetColor(col)
	end)

	location_in_tween:set_delay(.5)

	location_in_tween:on_complete(function()
		location_in_tween = nil

		location_out_tween = YOOTIL.Tween:new(1, { a = 1 }, { a = 0 })

		location_out_tween:on_change(function(c)
			local col = location:GetColor()
	
			col.a = c.a
	
			location:SetColor(col)
		end)

		location_out_tween:set_delay(3)
	end)
end)

