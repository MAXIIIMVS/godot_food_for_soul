extends Area2D


func _on_body_entered(body: Node2D) -> void:
	Engine.time_scale = 0.5  # slow down
	body.get_node("CollisionShape2D").queue_free()  # player falls
	$Timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
