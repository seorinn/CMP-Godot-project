extends Node2D

func _ready():
	if(GameData.musicPlaying == 1):
		$bgMusic.play()
		$Sound/Node2D/Sprite.visible = false
	elif(GameData.musicPlaying == -1):
		$Sound/Node2D/Sprite.visible = true
	if(GameData.effectSound == 1):
		$Sound/Node2D2/Sprite.visible = false
	else:		
		$Sound/Node2D2/Sprite.visible = true
	
   
func _on_CreditButton_pressed():
	if(GameData.effectSound == 1):
		GlobalButton.play()
	GameData.bgPosition = $bgMusic.get_playback_position()
	get_tree().change_scene("res://Credit.tscn")


func _on_RecordsButton_pressed():
	if(GameData.effectSound == 1):
		GlobalButton.play()
	GameData.bgPosition = $bgMusic.get_playback_position()
	get_tree().change_scene("res://Records.tscn")


func _on_PlayButton_pressed():
	if(GameData.effectSound == 1):
		GlobalButton.play()
	GameData.bgPosition = $bgMusic.get_playback_position()
	get_tree().change_scene("res://sadBean.tscn")

	
func _on_bgmButton_pressed():
	GameData.musicPlaying *= -1
	if(GameData.musicPlaying == -1):
		$Sound/Node2D/Sprite.visible = true
		$bgMusic.stop()
	elif(GameData.musicPlaying == 1):
		$Sound/Node2D/Sprite.visible = false
		$bgMusic.play()


func _on_effectSoundButton_pressed():
	GameData.effectSound *= -1
	if(GameData.effectSound == -1):
		$Sound/Node2D2/Sprite.visible = true
	elif(GameData.effectSound == 1):
		$Sound/Node2D2/Sprite.visible = false

