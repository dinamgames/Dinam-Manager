extends Node

var posOfensivas = {}

@onready var of00 = $"../../Zona00/Ofensivas/Control2/ButtonP01"
@onready var of01 = $"../../Zona01/Ofensivas/Control2/ButtonP01"
@onready var of02 = $"../../Zona02/Ofensivas/Control2/ButtonP01"


func _process(_delta):
	Ofensivas()


func Ofensivas():
	posOfensivas = {
		"Zona00" = of00.global_position,
		"Zona01" = of01.global_position,
		"Zona02" = of02.global_position,
	}
	
	
func CalcZonaZero():
	var suma_zona_zero = (
		of01.global_position +
		of02.global_position
	)
	of00.global_position = suma_zona_zero / 2
	
	
func ZonaZeroMode():
	of01.global_position = of00.global_position
	of02.global_position = of00.global_position
