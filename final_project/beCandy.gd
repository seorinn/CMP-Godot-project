extends Node2D
onready var at = get_node("/root/Attempts")
func _ready():
	if(GameData.musicPlaying == 1):
		$bgMusic.play(GameData.bgPosition)
		
func _on_QuitButton_pressed():
	
	at.records.push_back(at.attemps)
	at.attemps = 1
	get_tree().change_scene("res://Main.tscn")
