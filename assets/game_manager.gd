extends Node

@onready var timer: Timer = $Timer

var time: int
var score: int

func _on_timer_timeout() -> void:
	time += 1
