extends Node2D

@onready var enemy_scene = load("res://mobs/enemy_1.tscn") 
@onready var spawn_scene = $SpawnPoint 

func spawn_enemy():
	var enemy = enemy_scene.instantiate()
	add_child(enemy)

func _ready():
	set_process(true)
	set_physics_process(true)
	spawn_enemy()
	

func _process(delta):
	if randf() < delta * 0.5:
		spawn_enemy()
