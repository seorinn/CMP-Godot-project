extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var p = get_parent().get_parent().get_node("player")
var grow = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _physics_process(delta):
	if !p.mode_grass:
		grow=false
	if grow:
		get_parent().scale.y+=0.005
		get_parent().position.y-=0.52
	else:
		get_parent().scale.y+=0
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_Tree_body_entered(body):
	if body ==p&&p.mode_fire:
		get_parent().queue_free()
	elif body ==p&&p.mode_grass:
		grow= true


func _on_Area_Tree_body_exited(body):
	if body ==p:
		grow = false
