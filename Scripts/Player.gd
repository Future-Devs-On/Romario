extends CharacterBody2D

@onready var joystick = $"../Ui/BoxContainer/Joystick"



var Speed = 300

func _physics_process(delta):
	#get_input()
	var direction = joystick.posVector
	if direction:
		velocity = direction * Speed
	else:
		velocity = Vector2(0,0)
	move_and_slide()

func player():
	pass
