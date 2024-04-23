extends Node2D

var zonaActiva : int = 0
@onready var button_zona_01 = $"../ZonasBase/ButtonZona01"



func _on_button_zona_01_pressed():
	zonaActiva = 1
	print(button_zona_01.button_group.get_pressed_button())

func _on_button_zona_02_pressed():
	zonaActiva = 2

