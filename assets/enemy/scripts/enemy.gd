extends CharacterBody2D
class_name Enemy

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var speed := 300.0
var direction: int
var color_change: Color

func _ready() -> void:
	if color_change:
		animated_sprite_2d.self_modulate = color_change

func _physics_process(_delta: float) -> void:
	
	velocity.x = direction * speed
	
	if direction < 0:
		animated_sprite_2d.flip_h = true
	
	move_and_slide()
