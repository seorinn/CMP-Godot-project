extends Node2D

func _ready():
	if(GameData.musicPlaying == 1):
		$bgMusic.play(GameData.bgPosition)

func _on_SkipButton_pressed():
	if(GameData.effectSound == 1):
		GlobalButton.play()	
	get_tree().change_scene("res://Stages.tscn")
