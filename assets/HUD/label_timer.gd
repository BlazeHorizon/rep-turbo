extends Label

func _physics_process(_delta: float) -> void:
	text = "Time: " + str(GameManager.time)
