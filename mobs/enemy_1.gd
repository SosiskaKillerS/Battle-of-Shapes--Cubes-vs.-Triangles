extends CharacterBody2D

var hp = 100
@export var enemy_damage = 10
@export var SPEED = 50

@onready var player = get_node("/root/world/Player")

func take_damage(damage):
	hp-=damage
	if hp <= 0:
		queue_free()



func _physics_process(_delta):
	if player: 
		var direction = (player.position - position).normalized()
		velocity = direction * SPEED
		move_and_slide()
