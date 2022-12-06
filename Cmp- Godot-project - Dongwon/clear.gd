extends Label




func _on_sugar_body_entered(body):
	visible = true
	get_tree().paused = true
