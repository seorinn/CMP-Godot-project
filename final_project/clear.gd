extends Node2D
onready var at = get_node("/root/Attempts")
func _ready():
	GameData.clear = -1
	if(GameData.musicPlaying == 1):
		ClearSound.play()

func _on_sugar_body_entered(body):
	visible = true
	get_tree().paused = true


func _on_NextButton_pressed():
	at.attemps = 1
	get_tree().change_scene("res://Stages.tscn")
