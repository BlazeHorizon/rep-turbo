extends Node

@export var game_over_screen: PackedScene
@onready var start_menu: CanvasLayer = $StartMenu


func _on_player_player_lost() -> void:
	var game_over = game_over_screen.instantiate()
	add_child(game_over)
	game_over.button.pressed.connect(self._on_restart_button_pressed)
	GameManager.game_over()

func _on_restart_button_pressed():
	get_tree().reload_current_scene()


func _on_play_button_pressed() -> void:
	start_menu.queue_free()
	GameManager.game_start()
	
