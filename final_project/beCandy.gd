extends Node2D
onready var at = get_node("/root/Attempts")
func _ready():
	if(GameData.musicPlaying == 1):
		$bgMusic.play(GameData.bgPosition)
	if(GameData.effectSound == 1):
		YaySound.play()	
		
func _on_QuitButton_pressed():
	if(GameData.effectSound == 1):
		GlobalButton.play()	
	at.records.push_back(at.attemps) # input this score
	at.attemps = 1
	get_tree().change_scene("res://Main.tscn")
