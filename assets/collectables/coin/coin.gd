extends Area2D

func _on_area_entered(_area: Area2D) -> void:
	GameManager.score_up(1) 
	print(GameManager.score)
	queue_free()
