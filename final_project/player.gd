extends KinematicBody2D

var velocity = Vector2(0, 0)
var speed = 200
var jump = -700
var gravity = 50


#player movement and animation
func _physics_process(_delta):
	velocity.x = 0
	
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
		$bean.play("walk")
		$bean.flip_h = true
		
		
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -speed
		$bean.play("walk")
		$bean.flip_h = false
		
	else:
		$bean.play("default")
	
	if not is_on_floor():
		$bean.play("jump")
		
	if !get_parent().isRotate:
		velocity.y += gravity
	
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y += jump
		if(GameData.effectSound == 1):
			JumpSound.play()
		
	velocity = move_and_slide(velocity, Vector2.UP)
	
