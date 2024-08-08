extends CharacterBody2D

#cria uma variável para referenciar o script do joystick
@onready var joystick = $"../Ui/BoxContainer/Joystick"



var Speed = 300

func _physics_process(delta):
	#cria uma variável direction baseada no posVector do joystick
	#enquanto o joystick for pressionado/arrastado, a direção que o
	#player vai seguir é a do posVector do joystick
	#a velocidade é a direção que o player ta indo vezes a variavel Speed
	#se o joystick for solto a velocidade do player volta pra 0
	var direction = joystick.posVector
	if direction:
		velocity = direction * Speed
	else:
		velocity = Vector2(0,0)
	move_and_slide()

func player():
	pass
