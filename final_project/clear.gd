extends Node2D

func _ready():
	GameData.clear = -1
	if(GameData.musicPlaying == 1):
		ClearSound.play()

func _on_sugar_body_entered(body):
	visible = true
	get_tree().paused = true


func _on_NextButton_pressed():
	get_tree().change_scene("res://Stages.tscn")
