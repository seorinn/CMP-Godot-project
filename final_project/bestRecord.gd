extends Label
onready var at = get_node("/root/Attempts")

func _ready():
	pass
#	
func _physics_process(delta):          # set initial record for each stage
	if get_parent().get_name()=="Stage1":
		if at.records[0] == 50000:
			text = "-"
		else:
			text = str(at.records[0])
	if get_parent().get_name()=="Stage2":
		if at.records[1] == 50000:
			text = "-"
		else:
			text = str(at.records[1])
	if get_parent().get_name()=="Stage3":
		if at.records[2] == 50000:
			text = "-"
		else:
			text = str(at.records[2])
	if get_parent().get_name()=="Stage4":
		if at.records[3] == 50000:
			text = "-"
		else:
			text = str(at.records[3])
	if get_parent().get_name()=="Stage5":
		if at.records[4] == 50000:
			text = "-"
		else:
			text = str(at.records[4])
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
