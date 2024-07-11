extends Area2D
var SPEED = 300 

func _physics_process(delta):
	position += transform.x * SPEED * delta 


func _on_body_entered(body):
	if body.is_in_group("mob"):
		body.queue_free()
	queue_free()