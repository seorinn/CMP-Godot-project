extends Node2D

#play BGM only when musicPlaying is on
func _ready():
	if(GameData.musicPlaying == 1):
		$bgMusic.play(GameData.bgPosition)

#button to go main scene
#effect sound is played only when effectSound is on
func _on_QuitButton_pressed():
	if(GameData.effectSound == 1):
		GlobalButton.play()
	get_tree().change_scene("res://Main.tscn")
