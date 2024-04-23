extends Node2D

@export var zona : int


func _process(_delta):
	if get_parent().zonaActiva != zona:
		visible = false
	else:
		visible = true
