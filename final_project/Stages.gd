extends Node2D


func _ready():
	if(GameData.musicPlaying == 1):
		$bgMusic.play(GameData.bgPosition)

func _on_QuitButton_pressed():
	get_tree().change_scene("res://Main.tscn")


func _on_Stage1Button_pressed():
	get_tree().change_scene("res://stage0.tscn")


func _on_Stage2Button_pressed():
	get_tree().change_scene("res://stage0_5.tscn")


func _on_Stage3Button_pressed():
	get_tree().change_scene("res://stage1.tscn")


func _on_Stage4Button_pressed():
	get_tree().change_scene("res://stage3.tscn")


func _on_Stage5Button_pressed():
	get_tree().change_scene("res://stage2.tscn")
