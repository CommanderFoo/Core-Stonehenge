local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local notification = script:GetCustomProperty("notification"):WaitForObject()
local background = script:GetCustomProperty("background"):WaitForObject()
local text = script:GetCustomProperty("text"):WaitForObject()

local queue = YOOTIL.Utils.Queue:new()
local current_item = nil
local in_tween = nil
local out_tween = nil

function on_change(c)
	local bg_color = background:GetColor()
	local txt_color = text:GetColor()
	
	bg_color.a = c.bg
	txt_color.a = c.t

	background:SetColor(bg_color)
	text:SetColor(txt_color)
end

function Tick(dt)
	if(queue:length() > 0 and current_item == nil) then
		current_item = queue:pop()
		in_tween = YOOTIL.Tween:new(1.2, { bg = 0, t = 0 }, { bg = 0.4, t = 1 })
		out_tween = YOOTIL.Tween:new(1.2, { bg = 0.4, t = 1 }, { bg = 0, t = 0 })
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
			in_tween:set_delay(0.2)
			in_tween:tween(dt)
		elseif(out_tween and out_tween:active()) then
			out_tween:on_complete(function()
				current_item = nil
				out_tween = nil
			end)
			
			out_tween:on_change(on_change)
			
			out_tween:set_delay(4)
			out_tween:tween(dt)
		end
	end
end

Events.Connect("add_notification", function(msg)
	queue:push(msg)
end)