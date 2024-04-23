extends Node2D

@export var zona : int

func _process(_delta):
	if get_parent().zonaactiva != zona:
		$Player01.visible = false
	else:
		$Player01.visible = true
