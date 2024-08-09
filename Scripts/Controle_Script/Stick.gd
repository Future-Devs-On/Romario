extends Sprite2D

#cria uma variável para referenciar o Node Joystick
@onready var parent = $".."

#cria uma variável chamada pressing e seta ela como falsa
var pressing = false

#cria e deixa a variável maxLength editável pelo menu Inspector
@export var maxLength = 150
var deadzone 

func _ready():
	#faz o valor da variável deadzone ser o mesmo que ela tem no joystick
	#seta o valor do maxLength para maxLength vezes a escala x do joystick
	deadzone = parent.deadzone
	maxLength *= parent.scale.x

func _process(delta):
	#aqui eu expliquei resumido
	#pega a posição da bolinha do joystick e seta o valor do posVector 
	#com base nela e na deadzone e maxLength
	if pressing:
		if get_global_mouse_position().distance_to(parent.global_position) <= maxLength:
			global_position = get_global_mouse_position()
		else:
			var angle = parent.global_position.angle_to_point(get_global_mouse_position())
			global_position.x = parent.global_position.x + cos(angle)*maxLength
			global_position.y = parent.global_position.y + sin(angle)*maxLength
		calculateVector()
	else:
		global_position = lerp(global_position, parent.global_position, delta*50)
		parent.posVector = Vector2(0,0)
		
func calculateVector():
	if abs((global_position.x - parent.global_position.x)) >= deadzone:
		parent.posVector.x = (global_position.x - parent.global_position.x)/maxLength
	if abs((global_position.y - parent.global_position.y)) >= deadzone:
		parent.posVector.y = (global_position.y - parent.global_position.y)/maxLength
		

func _on_button_button_down():
	#se o botão for pressionado seta a variável pressing pra true
	pressing = true


func _on_button_button_up():
	#se o botão for pressionado seta a variável pressing pra false novamente
	pressing = false


