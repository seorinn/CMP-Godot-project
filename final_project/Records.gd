extends Node2D
onready var at = get_node("/root/Attempts")
var records = [0,0,0]
func _ready():
	if(GameData.musicPlaying == 1):
		$bgMusic.play(GameData.bgPosition)


func _on_QuitButton_pressed():
	get_tree().change_scene("res://Main.tscn")
