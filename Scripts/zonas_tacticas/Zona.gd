extends Area2D

@export var zona : int

func _process(_delta):
	if get_parent().zonaactiva != zona:
		$Ocultable.visible = false	
	

	
