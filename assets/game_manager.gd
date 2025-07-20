extends Node

@onready var timer: Timer = $Timer
@onready var coin_sfx: AudioStreamPlayer2D = $CoinSFX
@onready var music_player: AudioStreamPlayer2D = $MusicPlayer

var time: int
var score: int

func game_start():
	time = 0
	score = 0
	timer.start()
	music_player.play(0.0)
	
func game_over():
	timer.stop()
	music_player.stop()

func manager_reset():
	time = 0
	score = 0

func score_up(amount):
	coin_sfx.play()
	score += amount

func _on_timer_timeout() -> void:
	time += 1
