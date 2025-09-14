extends Area2D


func _on_body_entered(_body: Node2D) -> void:
	# TODO: add to score
	queue_free()
