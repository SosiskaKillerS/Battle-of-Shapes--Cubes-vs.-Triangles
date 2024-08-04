extends CharacterBody2D

var hp = 100 
const SPEED = 100

var bullet = preload("res://bullet/area_2d.tscn")

func get_input():
	var input_direction = Input.get_vector("LEFT","RIGHT","UP","DOWN")
	velocity = input_direction * SPEED
	look_at(get_global_mouse_position())
	
func take_damage(damage):
	hp-=damage
	if hp <= 0:
		queue_free()

func shoot():
	var b = bullet.instantiate()
	owner.add_child(b)
	b.transform = $GunCast2D/Marker2D.global_transform
	
func _physics_process(_delta):
	get_input()
	move_and_slide()
	$GunCast2D.look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("SHOOT"):
		shoot() 
