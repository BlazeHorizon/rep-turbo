extends CharacterBody2D
class_name Enemy


var speed := 300.0
var direction: int

func _physics_process(_delta: float) -> void:
	
	velocity.x = direction * speed
	
	move_and_slide()
