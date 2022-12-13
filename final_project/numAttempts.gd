extends Label

onready var at = get_node("/root/Attempts")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():           # show your record for here
	text = "Your record: "+str(at.attemps)+" attempts"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
