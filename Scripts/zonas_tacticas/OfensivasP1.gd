extends Node2D

var posicionesOfensivas = {}

@onready var zona01 = $"../../../Zona01/Ocultable/PlayersOfensiva/Player01"
@onready var zona02 = $"../../../Zona02/Ocultable/PlayersOfensiva/Player01"
@onready var zona03 = $"../../../Zona03/Ocultable/PlayersOfensiva/Player01"
@onready var zona04 = $"../../../Zona04/Ocultable/PlayersOfensiva/Player01"
@onready var zona05 = $"../../../Zona05/Ocultable/PlayersOfensiva/Player01"
@onready var zona06 = $"../../../Zona06/Ocultable/PlayersOfensiva/Player01"
@onready var zona07 = $"../../../Zona07/Ocultable/PlayersOfensiva/Player01"
@onready var zona08 = $"../../../Zona08/Ocultable/PlayersOfensiva/Player01"
@onready var zona09 = $"../../../Zona09/Ocultable/PlayersOfensiva/Player01"
@onready var zona10 = $"../../../Zona10/Ocultable/PlayersOfensiva/Player01"
@onready var zona11 = $"../../../Zona11/Ocultable/PlayersOfensiva/Player01"
@onready var zona12 = $"../../../Zona12/Ocultable/PlayersOfensiva/Player01"
@onready var zona13 = $"../../../Zona13/Ocultable/PlayersOfensiva/Player01"
@onready var zona14 = $"../../../Zona14/Ocultable/PlayersOfensiva/Player01"
@onready var zona15 = $"../../../Zona15/Ocultable/PlayersOfensiva/Player01"
@onready var zona16 = $"../../../Zona16/Ocultable/PlayersOfensiva/Player01"
@onready var zona17 = $"../../../Zona17/Ocultable/PlayersOfensiva/Player01"
@onready var zona18 = $"../../../Zona18/Ocultable/PlayersOfensiva/Player01"
@onready var zona19 = $"../../../Zona19/Ocultable/PlayersOfensiva/Player01"
@onready var zona20 = $"../../../Zona20/Ocultable/PlayersOfensiva/Player01"
@onready var zona21 = $"../../../Zona21/Ocultable/PlayersOfensiva/Player01"
@onready var zona22 = $"../../../Zona22/Ocultable/PlayersOfensiva/Player01"
@onready var zona23 = $"../../../Zona23/Ocultable/PlayersOfensiva/Player01"
@onready var zona24 = $"../../../Zona24/Ocultable/PlayersOfensiva/Player01"
@onready var zona25 = $"../../../Zona25/Ocultable/PlayersOfensiva/Player01"
@onready var zona26 = $"../../../Zona26/Ocultable/PlayersOfensiva/Player01"
@onready var zona00 = $".."




func PosOfensivas():
	posicionesOfensivas = {
		Zona01 = zona01.global_transform.origin,
		Zona02 = zona02.global_transform.origin,
		Zona03 = zona03.global_transform.origin,
		Zona04 = zona04.global_transform.origin,
		Zona05 = zona05.global_transform.origin,
		Zona06 = zona06.global_transform.origin,
		Zona07 = zona07.global_transform.origin,
		Zona08 = zona08.global_transform.origin,
		Zona09 = zona09.global_transform.origin,
		Zona10 = zona10.global_transform.origin,
		Zona11 = zona11.global_transform.origin,
		Zona12 = zona12.global_transform.origin,
		Zona13 = zona13.global_transform.origin,
		Zona14 = zona14.global_transform.origin,
		Zona15 = zona15.global_transform.origin,
		Zona16 = zona16.global_transform.origin,
		Zona17 = zona17.global_transform.origin,
		Zona18 = zona18.global_transform.origin,
		Zona19 = zona19.global_transform.origin,
		Zona20 = zona20.global_transform.origin,
		Zona21 = zona21.global_transform.origin,
		Zona22 = zona22.global_transform.origin,
		Zona23 = zona23.global_transform.origin,
		Zona24 = zona24.global_transform.origin,
		Zona25 = zona25.global_transform.origin,
		Zona26 = zona26.global_transform.origin,	
	}
	CalcZona00()

func CalcZona00():
	var suma = (
		posicionesOfensivas.Zona01 +
		posicionesOfensivas.Zona02 +
		posicionesOfensivas.Zona03 +
		posicionesOfensivas.Zona04 +
		posicionesOfensivas.Zona05 +
		posicionesOfensivas.Zona06 +
		posicionesOfensivas.Zona07 +
		posicionesOfensivas.Zona08 +
		posicionesOfensivas.Zona09 +
		posicionesOfensivas.Zona10 +
		posicionesOfensivas.Zona11 +
		posicionesOfensivas.Zona12 +
		posicionesOfensivas.Zona13 +
		posicionesOfensivas.Zona14 +
		posicionesOfensivas.Zona15 +
		posicionesOfensivas.Zona16 +
		posicionesOfensivas.Zona17 +
		posicionesOfensivas.Zona18 +
		posicionesOfensivas.Zona19 +
		posicionesOfensivas.Zona20 +
		posicionesOfensivas.Zona21 +
		posicionesOfensivas.Zona22 +
		posicionesOfensivas.Zona23 +
		posicionesOfensivas.Zona24 +
		posicionesOfensivas.Zona25 +
		posicionesOfensivas.Zona26
	)
	
	posicionesOfensivas.Zona00 = suma / 26
	zona00.global_transform.origin = posicionesOfensivas.Zona00


