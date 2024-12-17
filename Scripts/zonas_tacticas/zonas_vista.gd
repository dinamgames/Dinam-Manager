extends Node2D

@export var vista : int
@onready var zonas = $"../.."



func _process(_delta):
	if self.vista == 0:
		if zonas.vista_defensiva == true:
			visible = true
		else:
			visible = false
	elif self.vista == 1:
		if zonas.vista_ofensiva == true:
			visible = true
		else:
			visible = false
