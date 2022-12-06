extends Area2D
onready var p = $"../player"
var shieldcheck = false


func _on_thorn_body_entered(body):
	if body == p && !p.mode_shield:
		body.queue_free()
		get_tree().change_scene("res://stage1.tscn")
	if body == p && p.mode_shield:
		shieldcheck = true




func _on_thorn2_body_exited(body):
	if body == p && !p.mode_shield:
		body.queue_free()
		get_tree().change_scene("res://stage1.tscn")
	if body == p && p.mode_shield:
		shieldcheck = false
	
func _physics_process(delta):
	if $"../player".mode_shield == false && shieldcheck:
		get_tree().reload_current_scene()
