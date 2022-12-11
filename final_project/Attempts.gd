extends Label
var attemps =1
var records = [50000,50000,50000]
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	records.sort()
	
	
func _physics_process(delta):
	records.sort()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
