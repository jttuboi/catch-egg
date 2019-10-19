extends RigidBody2D

func _ready():
	pass



func _on_Egg_body_entered(body):
	if (body.get_name() == "Ground"):
		queue_free()