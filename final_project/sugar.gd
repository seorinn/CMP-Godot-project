extends Area2D
onready var at = get_node("/root/Attempts")


func _on_sugar_body_entered(body):
	if(GameData.effectSound == 1):
		GameData.clear = 1
		GetCandySound.play()
		yield(get_tree().create_timer(0.3), "timeout")	
	
	if get_parent().get_name() == "stage1" :
		if at.attemps<=at.records[0]:
			at.records[0] = at.attemps
	if get_parent().get_name() == "stage2" :
		if at.attemps<=at.records[1]:
			at.records[1] = at.attemps
	if get_parent().get_name() == "stage3" :
		if at.attemps<=at.records[2]:
			at.records[2] = at.attemps
	if get_parent().get_name() == "stage4" :
		if at.attemps<=at.records[3]:
			at.records[3] = at.attemps
	if get_parent().get_name() == "stage5" :
		if at.attemps<=at.records[4]:
			at.records[4] = at.attemps
	get_tree().change_scene("res://clear.tscn")
