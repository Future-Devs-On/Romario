extends Node


#var current_scene = null
#
#func _ready():
	#var root = get_tree().root
	#current_scene = root.get_child(root.get_child())


@onready var current_scene: Node = get_tree().get_current_scene()
#var _current_scene = get_tree().get_current_scene()

func _process(_delta: float):
	if current_scene != get_tree().get_current_scene():
		current_scene = get_tree().get_current_scene()
		print(current_scene)
	#if current_scene != _current_scene and _current_scene.get_name() != "menu_config":
		#current_scene = _current_scene

