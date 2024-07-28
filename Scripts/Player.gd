extends CharacterBody2D


const Speed = 300


func get_input():
	
	var direction_x = Input.get_axis("left_button", "right_button")
	velocity.x = direction_x * Speed
	
	var direction_y = Input.get_axis("up_button", "down_button")
	velocity.y = direction_y * Speed


func _physics_process(delta):
	get_input()
	move_and_slide()
