extends Area2D


@onready var point_1_infos = $"../point_1_infos"

var in_area = false

func _on_body_entered(body):
	in_area = true
	print("player in")
	
func _on_body_exited(body):
	in_area = false
	print("player out")
	
func _unhandled_input(event):
	if in_area:
		if event.is_action_pressed("interact"):
			point_1_infos.visible = true
