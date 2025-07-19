extends Node2D

@export var enemy_scene: PackedScene
@onready var enemy_timer: Timer = $EnemyTimer
@onready var left_spawners: Node = $LeftSpawners
@onready var right_spawners: Node = $RightSpawners
var active_spawners: Array[Node]



func _on_enemy_timer_timeout() -> void:
	active_spawners = $LeftSpawners.get_children() + $RightSpawners.get_children()
	active_spawners.shuffle()
	
	var amount_of_spawners = randi_range(0, 2)
	var chosen_spawners = active_spawners.slice(0, amount_of_spawners)
	
	for s in chosen_spawners:
		var enemy = enemy_scene.instantiate()
		enemy.scale = Vector2(4.0, 4.0)
		add_child(enemy)
		enemy.position = s.position
