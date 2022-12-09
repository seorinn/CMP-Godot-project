extends Node2D

var musicPlaying = 1

func _on_CreditButton_pressed():
	get_tree().change_scene("res://Credit.tscn")


func _on_RecordsButton_pressed():
	get_tree().change_scene("res://Records.tscn")


func _on_PlayButton_pressed():
	get_tree().change_scene("res://Stages.tscn")


func _on_TextureButton_pressed():
	musicPlaying *= -1
