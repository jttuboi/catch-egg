extends KinematicBody2D

var count = 0



func _ready():
	set_process(true)



func _process(delta):
	var mouse_pos = get_viewport().get_mouse_position()
	position.x = mouse_pos.x



func _on_Area2D_body_entered(body):
	if (body.is_in_group("Eggs")):
		body.queue_free()
		count += 1
		$"../Counter".text = String(count)