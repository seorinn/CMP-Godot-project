extends Area2D

onready var at = get_node("/root/Attempts")

#player enter the thorn, make sound effect, respawn and attemps+1
func _on_thorn_body_entered(body):
	if(GameData.clear == -1):
		if(GameData.effectSound == 1):
			KilledSound.play()
		at.attemps +=1
		get_tree().reload_current_scene()
