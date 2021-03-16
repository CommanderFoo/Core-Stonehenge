local received_thoughts = {}

Events.ConnectForPlayer("save_thought", function(id)
	print(time())
	received_thoughts[id] = true
end)