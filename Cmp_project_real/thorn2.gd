extends Area2D




func _on_thorn_body_entered(body):
	body.queue_free()
	get_tree().change_scene("res://stage2.tscn")

