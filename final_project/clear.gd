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
	if(GameData.effectSound == 1):
		GlobalButton.play()
	#if all of the stages are cleared -> ending story scene
	if(int(at.records[0]) + int(at.records[1]) + int(at.records[2]) + 
		int(at.records[3]) + int(at.records[4]) < 50000):
			get_tree().change_scene("res://beCandy.tscn")
	else:
		get_tree().change_scene("res://Stages.tscn")
