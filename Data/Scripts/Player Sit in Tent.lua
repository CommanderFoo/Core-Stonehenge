function OnPlayerJoined(player)
    player.animationStance = "unarmed_sit_ground_crossed"
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)