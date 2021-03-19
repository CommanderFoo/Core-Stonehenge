local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()

local propBoostMaxSpeed = script:GetCustomProperty("BoostMaxSpeed")

local normalMaxSpeed = 500

function Boost(ability)
	normalMaxSpeed = ability.owner.maxWalkSpeed
	--print(normalMaxSpeed) --Normal Speed Check
    ability.owner.maxWalkSpeed = propBoostMaxSpeed
end

function loseBoost(ability)
    ability.owner.maxWalkSpeed = normalMaxSpeed
end

ABILITY.executeEvent:Connect(Boost)
ABILITY.cooldownEvent:Connect(loseBoost)