extends Node2D

@export var enemy_scene: PackedScene
@export var coin_scene: PackedScene
@onready var enemy_timer: Timer = $EnemyTimer
@onready var left_spawners: Node = $LeftSpawners
@onready var right_spawners: Node = $RightSpawners
@onready var coin_timer: Timer = $CoinTimer

var active_spawners: Array[Node]



func _on_enemy_timer_timeout() -> void:
	active_spawners = $LeftSpawners.get_children() + $RightSpawners.get_children()
	var shuffled_spawners = active_spawners
	shuffled_spawners.shuffle()
	
	var amount_of_spawners = randi_range(0, 2)
	var chosen_spawners = shuffled_spawners.slice(0, amount_of_spawners)
	
	for s in chosen_spawners:
		var enemy = enemy_scene.instantiate()
		enemy.scale = Vector2(4.0, 4.0)
		enemy.position = s.position
		enemy.speed = randi_range(100, 600)
		enemy.color_change = Color(randf_range(0.0, 1.0), randf_range(0.0, 1.0), randf_range(0.0, 1.0))
		if s in left_spawners.get_children():
			enemy.direction = 1
		else:
			enemy.direction = -1
		
		add_child(enemy)
		


func _on_coin_timer_timeout() -> void:
	var coin = coin_scene.instantiate()
	coin.scale = Vector2(4.0, 4.0)
	coin.position = Vector2(randi_range(20, 1152), randi_range(20, 648))
	for i in 50:
		if coin.position.x > 890 and coin.position.y < 125:
			coin.position = Vector2(randi_range(20, 1152), randi_range(20, 648))
		else:
			break
	add_child(coin)
