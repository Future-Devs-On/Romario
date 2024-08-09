extends Control

const CenaAtual = preload("res://Scripts/cena_atual.gd")

func _ready():
	visible = false

func _on_resume_pressed():
	visible = false
	get_tree().change_scene_to_(CenaAtual)
