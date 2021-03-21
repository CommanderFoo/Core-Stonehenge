local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local background = script:GetCustomProperty("background"):WaitForObject()
local text = script:GetCustomProperty("text"):WaitForObject()
local frame = script:GetCustomProperty("frame"):WaitForObject()

local in_time = script:GetCustomProperty("in_time")
local stay_time = script:GetCustomProperty("stay_time")
local out_time = script:GetCustomProperty("out_time")

local queue = YOOTIL.Utils.Queue:new()
local current_item = nil
local in_tween = nil
local out_tween = nil

function on_change(c)
	local bg_color = background:GetColor()
	local txt_color = text:GetColor()
	local fr_color = frame:GetColor()

	bg_color.a = c.bg
	txt_color.a = c.t
	fr_color.a = c.bg

	background:SetColor(bg_color)
	text:SetColor(txt_color)
	frame:SetColor(fr_color)
end

function Tick(dt)
	if(queue:length() > 0 and current_item == nil) then
		current_item = queue:pop()

		in_tween = YOOTIL.Tween:new(current_item.in_time or in_time, { bg = 0, t = 0 }, { bg = 0.6, t = 1 })
		out_tween = YOOTIL.Tween:new(current_item.out_time or out_time, { bg = 0.6, t = 1 }, { bg = 0, t = 0 })
	end

	if(current_item ~= nil) then
		if(in_tween and in_tween:active()) then
			in_tween:on_start(function()
				text.text = current_item.msg or current_item
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
			
			out_tween:set_delay(current_item.stay_time or stay_time)
			out_tween:tween(dt)
		end
	end
end

Events.Connect("add_notification", function(msg)
	queue:push(msg)
end)