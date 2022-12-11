extends Node2D

func _ready():
	if(GameData.musicPlaying == 1):
		$bgMusic.play(GameData.bgPosition)

func _on_SkipButton_pressed():
	get_tree().change_scene("res://Stages.tscn")
