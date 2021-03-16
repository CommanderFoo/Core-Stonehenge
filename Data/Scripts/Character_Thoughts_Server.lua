local received_thoughts = {}

Events.ConnectForPlayer("save_thought", function(id)
	received_thoughts[id] = true
end)