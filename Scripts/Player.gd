extends CharacterBody2D


var Speed = 300

@onready var joystick = $"../Ui/BoxContainer/Joystick"

#func get_input():
	#
	#var direction_x = Input.get_axis("left_button", "right_button")
	#velocity.x = direction_x * Speed
	#
	#var direction_y = Input.get_axis("up_button", "down_button")
	#velocity.y = direction_y * Speed


func _physics_process(delta):
	#get_input()
	var direction = joystick.posVector
	if direction:
		velocity = direction * Speed
	else:
		velocity = Vector2(0,0)
	move_and_slide()
