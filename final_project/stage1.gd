extends Node2D

var isRotate = false
var enableKey = true

func _process(delta):

	
	if Input.is_action_just_pressed("rotate_right") and enableKey:
		enableKey = false
		isRotate = true
		for i in range(18):
			rotation_degrees += 5
			$player.rotation_degrees-=5
			yield(get_tree().create_timer(delta/2), "timeout")
		yield(get_tree().create_timer(delta), "timeout")
		isRotate = false
		yield(get_tree().create_timer(1), "timeout")
		enableKey = true


	if Input.is_action_just_pressed("rotate_left") and enableKey:
		enableKey = false
		isRotate = true
		for i in range(18):
			rotation_degrees -= 5
			$player.rotation_degrees+=5
			yield(get_tree().create_timer(delta/2), "timeout")
		yield(get_tree().create_timer(delta), "timeout")
		isRotate = false
		yield(get_tree().create_timer(1), "timeout")
		enableKey = true

	
	if Input.is_action_just_pressed("esc") and enableKey:
		get_tree().change_scene("res://Stages.tscn")
