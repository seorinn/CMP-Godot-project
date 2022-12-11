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
	if !p.mode_water:
		grow=false
	if grow:
		if get_parent().scale.y<=1.7:
			get_parent().scale.y+=0.005
			get_parent().scale.x+=0.001
			get_parent().position.y-=0.32
	else:
		get_parent().scale.y+=0
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_Tree_body_entered(body):
	if body ==p&&p.mode_fire:
		
		$Timer2.start()
		get_parent().get_node("burning").visible = true
		get_parent().get_node("burning2").visible = true
		get_parent().get_node("burning3").visible = true
		get_parent().get_node("burning").play()
		get_parent().get_node("burning2").play()
		get_parent().get_node("burning3").play()
		
	elif body ==p&&p.mode_water:
		grow= true


func _on_Area_Tree_body_exited(body):
	if body ==p:
		grow = false


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
