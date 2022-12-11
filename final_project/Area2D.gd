extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var p = get_parent().get_parent().get_node("player")
var grow = false
var myBody
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _physics_process(delta):
	
	
	if grow:                   # grow processing
		$"../AnimationPlayer".play("myAnimation")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_Tree_body_entered(body):          # colliding with tree
	if body ==p&&p.mode_fire:
		
		$Timer2.start()                             # burning animation
		get_parent().get_node("burning").visible = true
		get_parent().get_node("burning2").visible = true
		get_parent().get_node("burning3").visible = true
		get_parent().get_node("burning").play()
		get_parent().get_node("burning2").play()
		get_parent().get_node("burning3").play()
		
		p.mode_fire = false
	elif body ==p&&p.mode_water:  
		if get_parent().scale.y<0.85:            # grow tree
			grow= true
			p.mode_water = false
	else:
		return

func _on_Area_Tree_body_exited(body):
	return
#	if body ==p:
#		grow = false


func _on_Timer_timeout():
	get_parent().queue_free()
	


func _on_Timer2_timeout():
	
	get_parent().get_node("burning").visible = false
	get_parent().get_node("burning2").visible = false
	get_parent().get_node("burning3").visible = false
	get_parent().get_node("Sprite").visible = false
	get_parent().get_node("burn").visible = true
	get_parent().get_node("burn").play()
	$Timer.start()


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "myAnimation":
		$"../AnimationPlayer".stop()
		grow = false
