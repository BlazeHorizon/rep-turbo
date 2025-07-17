extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var player_state = "Playing"

func _physics_process(_delta: float) -> void:
	if player_state == "Playing":
		var direction := Vector2(Input.get_axis("left", "right"), Input.get_axis("up", "down"))
		if direction:
			animated_sprite_2d.play("Walking")
			velocity = direction 
			velocity = velocity.normalized() * SPEED
		
		else:
			animated_sprite_2d.play("Idle")
			velocity.x = move_toward(velocity.x, 0, SPEED)
			velocity.y = move_toward(velocity.y, 0, SPEED)

		move_and_slide()

	if player_state == "Lost":
		animated_sprite_2d.play("Hurt")
		print("Game Over")


func _on_hit_by_enemy():
	player_state = "Lost"
