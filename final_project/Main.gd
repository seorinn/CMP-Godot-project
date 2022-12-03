extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_CreditButton_pressed():
	get_tree().change_scene("res://Credit.tscn")


func _on_RecordsButton_pressed():
	get_tree().change_scene("res://Records.tscn")


func _on_PlayButton_pressed():
	get_tree().change_scene("res://Stages.tscn")
