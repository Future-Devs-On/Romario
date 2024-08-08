extends Area2D

#cria uma variável para referenciar o script do menu de informações

@onready var point_1_infos = $"../../point_1_infos"

#cria uma variável chamada in_area e seta ela como falsa
var in_area = false

func _on_body_entered(body):
	#se o player entrar na area seta a variável in_area para verdadeira
	if body.has_method("player"):
		in_area = true
	
func _on_body_exited(body):
	#se o player sair da area seta a variável in_area para falsa novamente
	if body.has_method("player"):
		in_area = false
	
func _unhandled_input(event):
	#se a variável in_area for verdadeira
	#e se o botão com o input interact for pressionado 
	#deixa o menu de informações visível
	if in_area:
		if event.is_action_pressed("interact"):
			point_1_infos.visible = true
