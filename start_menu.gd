extends CanvasLayer

@onready var play_button: Button = $Control/Panel/VBoxContainer/PlayButton
@onready var credits_button: Button = $Control/Panel/VBoxContainer/CreditsButton



func _ready() -> void:
	play_button.grab_focus()
	
