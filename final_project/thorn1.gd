extends Area2D

onready var at = get_node("/root/Attempts")


# when colliding with thorn, reload current scene
func _on_thorn_body_entered(body):
	if(GameData.clear == -1):
		if(GameData.effectSound == 1):
			KilledSound.play()
		
		at.attemps +=1
		get_tree().reload_current_scene()
