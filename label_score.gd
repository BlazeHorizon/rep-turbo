extends Label

func _physics_process(_delta: float) -> void:
	text = "Score: " + str(GameManager.score)
