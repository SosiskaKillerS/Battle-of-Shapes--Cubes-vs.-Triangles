extends CharacterBody2D


const SPEED = 100


func get_input():
	var input_direction = Input.get_vector("LEFT","RIGHT","UP","DOWN")
	velocity = input_direction * SPEED
	look_at(get_global_mouse_position())
	
func _physics_process(delta):
	get_input()
	move_and_slide()
