extends Area2D


func _on_thorn_body_entered(body):
	if(GameData.clear == -1):
		if(GameData.effectSound == 1):
			KilledSound.play()
		body.queue_free()
		get_tree().change_scene("res://stage3.tscn")
