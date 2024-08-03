extends Node2D

@onready var enemy_scene = preload("res://mobs/enemy_1.tscn")



func _on_timer_timeout():
	var enemy = enemy_scene.instantiate()
	enemy.position = position
	get_parent().get_node(".").add_child(enemy)
