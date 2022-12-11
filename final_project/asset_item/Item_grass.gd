extends Area2D

onready var p = get_parent().get_node("player")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




func _on_Item_water_body_entered(body):
	if body == p:
		$"../player".mode_water = true
