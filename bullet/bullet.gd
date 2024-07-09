extends CharacterBody2D


const SPEED = 300.0

var direction = Vector2()


func _physics_process(delta):
	move_and_slide()

func set_direction(new_direction):
	direction = new_direction.normalized()
