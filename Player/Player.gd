extends CharacterBody2D


const SPEED = 100
@onready var bullet_scene = preload("res://bullet/bullet.tscn")

func get_input():
	var input_direction = Input.get_vector("LEFT","RIGHT","UP","DOWN")
	velocity = input_direction * SPEED
	look_at(get_global_mouse_position())
func _shoot():
	if Input.is_action_just_pressed("SHOOT"):
		var bullet = bullet_scene.instance()
		bullet.position = global_position
		bullet.set_direction(Vector2(1,0).rotated(rotation))
		get_parent().add_child(bullet)
func _physics_process(delta):
	get_input()
	_shoot()
	move_and_slide()
