
var player_in_area = false

func _unhandled_input(event):
	if player_in_area:
		if event.is_action_pressed("interact"):
			run_dialogue("primeirasFalas")

#Checa se o player entrou na área
func _on_area_dialogo_body_entered(body):
	if body.has_method("player"):
		player_in_area = true

#Checa se o player saiu da área
func _on_area_dialogo_body_exited(body):
	if body.has_method("player"):
		player_in_area = false

func run_dialogue(dialogue_string):
	pass
