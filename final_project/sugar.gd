extends Area2D



func _on_sugar_body_entered(body):
	if(GameData.effectSound == 1):
		GameData.clear = 1
		GetCandySound.play()
		yield(get_tree().create_timer(0.3), "timeout")	
	get_tree().change_scene("res://clear.tscn")
