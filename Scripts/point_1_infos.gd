extends CanvasLayer



func _ready():
	visible = false

func _on_a_1_pressed():
	visible = false
	get_tree().change_scene_to_file("res://Scenes/point_1.tscn")

func _on_a_2_pressed():
	visible = false
	get_tree().change_scene_to_file("res://Scenes/point_1.tscn")
	
