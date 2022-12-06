extends Node2D

var isRotate = false

func _process(delta):
	if Input.is_action_just_pressed("rotate_right"):
		isRotate = true
		for i in range(18):
			rotation_degrees += 5
			yield(get_tree().create_timer(delta/2), "timeout")
		yield(get_tree().create_timer(delta), "timeout")
		isRotate = false

	if Input.is_action_just_pressed("rotate_left"):
		isRotate = true
		for i in range(18):
			rotation_degrees -= 5
			yield(get_tree().create_timer(delta/2), "timeout")
		yield(get_tree().create_timer(delta), "timeout")
		isRotate = false
		
