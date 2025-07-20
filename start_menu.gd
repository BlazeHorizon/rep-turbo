extends CanvasLayer

@onready var play_button: Button = $Control/Panel/VBoxContainer/PlayButton
@onready var credits_button: Button = $Control/Panel/VBoxContainer/CreditsButton
@onready var credits_panel: Panel = $Control/CreditsPanel




func _ready() -> void:
	play_button.grab_focus()







func _on_credits_button_pressed() -> void:
	credits_panel.visible = not credits_panel.visible
	credits_panel.get_child(1).grab_focus()


func _on_credits_close_button_pressed() -> void:
	credits_panel.visible = false
	credits_button.grab_focus()
