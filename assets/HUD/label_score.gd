extends Label

func _physics_process(_delta: float) -> void:
	text = str(GameManager.time)
