extends Node

@onready var timer: Timer = $Timer

var time: int
var score: int

func game_start():
	time = 0
	score = 0
	timer.start()
	
func game_over():
	timer.stop()

func manager_reset():
	time = 0
	score = 0

func _on_timer_timeout() -> void:
	time += 1
