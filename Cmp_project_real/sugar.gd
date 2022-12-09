extends Area2D



func _on_sugar_body_entered(body):
	get_tree().change_scene("res://clear.tscn")
	
