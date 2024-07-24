extends CharacterBody2D

var hp = 50
@export var damage = 10
@export var SPEED = 50
var body = null

@onready var player = $"../Player"

func take_damage(damage):
	hp-=damage
	if hp <= 0:
		queue_free()



func _physics_process(_delta):
	var direction = global_position.direction_to(player.global_position)
	velocity  = direction*SPEED
	move_and_slide() 
	

