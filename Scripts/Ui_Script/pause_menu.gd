extends CanvasLayer

@onready var menu_config = $"../Ui/menu_config"

func _ready():
	#deixa o menu invisível
	visible = false

func _unhandled_input(event):
	#quando o botão com o input pause for pressionado
	#pausa o jogo e deixa o menu visível
	if event.is_action_pressed("pause"):
		visible = true
		get_tree().paused = true

func _on_resume_pressed():
	#quando o botão com o input resume fo pressionado
	#deixa o menu invisível de novo e despausa o jogo
	visible = false
	get_tree().paused = false
	
func _on_config_pressed():
	visible = false
	menu_config.visible = true


func _on_menu_pressed():
	#quando o botão com o input menu for pressionado
	#despausa o jogo e muda a cena para a tela inicial
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/Telas/tela_inicial.tscn")
	
	




