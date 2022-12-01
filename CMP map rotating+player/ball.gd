extends KinematicBody2D

var velocity = Vector2(0, 0)
var speed = 200
var jump = -2000
var gravity = 200


func _physics_process(delta):
	velocity.x = 0
	
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
		
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	
	if !Node2d.isRotate:
		velocity.y += gravity
	
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y += jump
		
	velocity = move_and_slide(velocity, Vector2.UP)
