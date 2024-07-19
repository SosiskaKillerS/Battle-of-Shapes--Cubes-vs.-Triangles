extends CharacterBody2D

@export var SPEED = 50
var body = null

@onready var player = $"../Player"



func _physics_process(_delta):
	var direction = global_position.direction_to(player.global_position)
	velocity  = direction*SPEED
	move_and_slide() 
	

