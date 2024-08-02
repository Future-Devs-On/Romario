extends CharacterBody2D


var Speed = 300

@onready var joystick = $"../Ui/BoxContainer/Joystick"


func _physics_process(delta):
	#get_input()
	var direction = joystick.posVector
	if direction:
		velocity = direction * Speed
	else:
		velocity = Vector2(0,0)
	move_and_slide()
