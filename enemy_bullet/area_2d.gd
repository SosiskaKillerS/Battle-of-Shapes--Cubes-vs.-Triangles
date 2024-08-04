extends Area2D
var SPEED = 100
var damage = 10 

func _physics_process(delta):
	position += transform.x * SPEED * delta



func _on_body_entered(body):
	if body.is_in_group("Player"):
		body.take_damage(damage)
	queue_free()
