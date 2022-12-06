extends KinematicBody2D

var velocity = Vector2(0, 0)
var speed = 200
var jump = -700
var gravity = 50
var mode_shield = false
var mode_fire = false
var mode_grass = false


func _physics_process(delta):
	
	velocity.x = 0
	
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
		
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	
	#if !stage1.isRotate:
		#velocity.y += gravity
	
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y += jump
		
	velocity.y += gravity
	velocity = move_and_slide(velocity, Vector2.UP)
	
	if(mode_shield):                  # shield image
		$shiled.visible = true
	else:
		$shiled.visible = false
	
	if(mode_fire):                 # fire image
		$fire.visible = true
	else:
		$fire.visible = false
	if(mode_grass):                 # grass image
		$grass.visible = true
	else:
		$grass.visible = false
		

func _on_Item_shield_body_entered(body): # shield mode time checking
	if body == self:
		mode_shield = true
		$Timer_shield.start()
		
func _on_Item_fire_body_entered(body): # fire mode time checking
	if body == self:
		mode_fire = true
		mode_grass = false
		$Timer_fire.start()
func _on_Item_grass_body_entered(body):# grass mode time checking
	if body == self:
		mode_grass = true
		mode_fire = false
		$Timer_grass.start()

func _on_Timer_timeout():             # trun off item effect 
	mode_shield = false
func _on_Timer_fire_timeout():
	mode_fire = false
func _on_Timer_grass_timeout():
	
	mode_grass = false



