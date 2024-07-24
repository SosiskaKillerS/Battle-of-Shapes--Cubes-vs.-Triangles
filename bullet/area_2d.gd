extends Area2D
var SPEED = 300 
var damage = 25 


func _physics_process(delta):
	position += transform.x * SPEED * delta 


func _on_body_entered(body):
	if body.is_in_group("mob"):
		body.take_damage(damage) 
	queue_free()
