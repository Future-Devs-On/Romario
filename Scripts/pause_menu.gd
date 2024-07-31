extends CanvasLayer

func _ready():
	visible = false

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		visible = true
		get_tree().paused = true

func _on_resume_pressed():
	visible = false
	get_tree().paused = false
	


func _on_menu_pressed():
		get_tree().paused = false
		get_tree().change_scene_to_file("res://Scenes/title_screen.tscn")
