extends CharacterBody2D


const SPEED = 100

var bullet = preload("res://bullet/area_2d.tscn")

func get_input():
	var input_direction = Input.get_vector("LEFT","RIGHT","UP","DOWN")
	velocity = input_direction * SPEED
	look_at(get_global_mouse_position())

func shoot():
	var b = bullet.instantiate()
	owner.add_child(b)
	b.transform = $GunCast2D/Marker2D.global_transform
	
func _physics_process(delta):
	get_input()
	move_and_slide()
	$GunCast2D.look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("SHOOT"):
		shoot() 
		
