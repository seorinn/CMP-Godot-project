extends Node2D

var isRotate = false
var enableKey = true
onready var at = get_node("/root/Attempts")
func _ready():
	if(GameData.musicPlaying == 1):
		$gameMusic.play()
		
func _process(delta):

	#rotate the map to right
	if Input.is_action_just_pressed("rotate_right") and enableKey:
		enableKey = false
		isRotate = true
		for i in range(18):
			rotation_degrees += 5
			$player.rotation_degrees-=5
			yield(get_tree().create_timer(delta/2), "timeout") #adjusting the speed of rotation
		yield(get_tree().create_timer(delta), "timeout") #adjusting the time to stop the player after rotation
		isRotate = false
		yield(get_tree().create_timer(0.3), "timeout") #prevent map continuous rotation
		enableKey = true

	#rotate the map to left
	if Input.is_action_just_pressed("rotate_left") and enableKey:
		enableKey = false
		isRotate = true
		for i in range(18):
			rotation_degrees -= 5
			$player.rotation_degrees+=5
			yield(get_tree().create_timer(delta/2), "timeout")
		yield(get_tree().create_timer(delta), "timeout")
		isRotate = false
		yield(get_tree().create_timer(0.3), "timeout")
		enableKey = true

	#quit to selecting stage scene(Stage.tscn) by esc key
	if Input.is_action_just_pressed("esc") and enableKey:
		at.attemps = 1
		get_tree().change_scene("res://Stages.tscn")
