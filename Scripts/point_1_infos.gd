extends CanvasLayer



func _ready():
	#deixa o menu de informações invisível
	visible = false

func _on_a_1_pressed():
	#quando o botão for pressionado muda a cena para a cena do diálogo
	get_tree().change_scene_to_file("res://Scenes/point_1_infos.tscn")

