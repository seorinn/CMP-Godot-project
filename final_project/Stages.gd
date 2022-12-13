extends Node2D


func _ready():
	if(GameData.musicPlaying == 1):
		$bgMusic.play(GameData.bgPosition)

func _on_QuitButton_pressed():
	if(GameData.effectSound == 1):
		GlobalButton.play()
	get_tree().change_scene("res://Main.tscn")


func _on_Stage1Button_pressed():
	if(GameData.effectSound == 1):
		StageButton.play()
	get_tree().change_scene("res://stage1.tscn")


func _on_Stage2Button_pressed():
	if(GameData.effectSound == 1):
		StageButton.play()
	get_tree().change_scene("res://stage2.tscn")


func _on_Stage3Button_pressed():
	if(GameData.effectSound == 1):
		StageButton.play()
	get_tree().change_scene("res://stage3.tscn")


func _on_Stage4Button_pressed():
	if(GameData.effectSound == 1):
		StageButton.play()
	get_tree().change_scene("res://stage4.tscn")


func _on_Stage5Button_pressed():
	if(GameData.effectSound == 1):
		StageButton.play()
	get_tree().change_scene("res://stage5.tscn")
