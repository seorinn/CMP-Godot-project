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


func _on_QuitButton_pressed():
	get_tree().change_scene("res://Main.tscn")


func _on_Stage1Button_pressed():
	get_tree().change_scene("res://stage1.tscn")


func _on_Stage2Button_pressed():
	get_tree().change_scene("res://stage2.tscn")


func _on_Stage3Button_pressed():
	get_tree().change_scene("res://stage3.tscn")