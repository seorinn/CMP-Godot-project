extends Node2D

func _ready():
	if(GameData.musicPlaying == 1):
		$bgMusic.play(GameData.bgPosition)
		
func _on_QuitButton_pressed():
	get_tree().change_scene("res://Main.tscn")
