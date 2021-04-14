local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local thoughts = script:GetCustomProperty("thoughts"):WaitForObject()

local bubble_1 = script:GetCustomProperty("bubble_1"):WaitForObject()
local bubble_2 = script:GetCustomProperty("bubble_2"):WaitForObject()
local bubble_3 = script:GetCustomProperty("bubble_3"):WaitForObject()

local text = script:GetCustomProperty("text"):WaitForObject()

local in_time = script:GetCustomProperty("in_time")
local stay_time = script:GetCustomProperty("stay_time")
local out_time = script:GetCustomProperty("out_time")

local queue = YOOTIL.Utils.Queue:new()
local current_item = nil
local in_tween = nil
local out_tween = nil

local received_thoughts = {}

function on_change(c)
	local bubble_color = bubble_1:GetColor()
	local txt_color = text:GetColor()
	local frame_color = bubble_2:GetColor()

	bubble_color.a = c.bg
	txt_color.a = c.t
	frame_color.a = c.bg

	bubble_1:SetColor(bubble_color)
	bubble_2:SetColor(frame_color)
	bubble_3:SetColor(bubble_color)

	text:SetColor(txt_color)
end

function Tick(dt)
	if(queue:length() > 0 and current_item == nil) then
		current_item = queue:pop()
		in_tween = YOOTIL.Tween:new(in_time, { bg = 0, t = 0 }, { bg = 0.6, t = 1 })
		out_tween = YOOTIL.Tween:new(out_time, { bg = 0.6, t = 1 }, { bg = 0, t = 0 })
	end

	if(current_item ~= nil) then
		if(in_tween and in_tween:active()) then
			in_tween:on_start(function()
				text.text = current_item
			end)

			in_tween:on_complete(function()
				in_tween = nil
			end)

			in_tween:on_change(on_change)
			in_tween:tween(dt)
		elseif(out_tween and out_tween:active()) then
			out_tween:on_complete(function()
				current_item = nil
				out_tween = nil
			end)
			
			out_tween:on_change(on_change)
			
			out_tween:set_delay(stay_time)
			out_tween:tween(dt)
		end
	end
end

function get_thought(id)
	local children = thoughts:GetChildren()

	for i = 1, #children do
		local data = thoughts:GetChildren()[i]

		if(data:GetCustomProperty("id") == id) then
			return data:GetCustomProperty("id"), data:GetCustomProperty("message")
		end
	end

	return nil
end

function add_thought_to_notebook(id, msg)
	received_thoughts[id] = msg
end

Events.Connect("add_thought", function(id)
	local thought_id, thought_message = get_thought(id)

	if(thought_id and thought_message) then
		queue:push(thought_message)
		add_thought_to_notebook(thought_id, thought_message)
	end
end)