local root = script.parent.parent
local outline = script:GetCustomProperty("outline"):WaitForObject()
local show_distance = script:GetCustomProperty("show_distance")

local local_player = Game.GetLocalPlayer()
local color = outline:GetSmartProperty("color a")

function Tick()
	local size = (local_player:GetWorldPosition() - root:GetWorldPosition()).size

	if(size > show_distance) then
		color.a = 0
	else
		color.a = 1
	end

	outline:SetSmartProperty("color a", color)
	
	Task.Wait(0.4)
end