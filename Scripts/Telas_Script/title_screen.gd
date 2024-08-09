extends Control

@onready var menu_config = $CanvasLayer/menu_config

#func _on_start_pressed():
	#get_tree().change_scene_to_file("res://Scenes/Mapas/principal.tscn")
#
#
#func _on_quit_pressed():
	#get_tree().quit()

func _on_start_pressed():
	get_tree().change_scene_to_file("res://Scenes/Mapas/principal.tscn")

func _on_config_pressed():
	menu_config.visible = true

func _on_quit_pressed():
	get_tree().quit()


