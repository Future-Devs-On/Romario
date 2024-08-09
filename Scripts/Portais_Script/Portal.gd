extends Area2D

var player_in_area = false


func _unhandled_input(event):
	if player_in_area:
		if event.is_action_pressed("interact"):
			get_tree().change_scene_to_file("res://Scenes/Mapas/mapa_01.tscn")
			


func _on_body_entered(body):
	if body.has_method("player"):
		player_in_area = true
		print("player in")


func _on_body_exited(body):
	if body.has_method("player"):
		player_in_area = false
		print("player out")
