extends Node2D

var ArrayRoles = [
	"Portero",
	"Defensa Central",
	"Defensa Lateral",
	"Medio Centro",
	"Centrocampista Interior",
	"Centrocampista de Banda",
	"Media Punta", 
	"Delantero Centro",
]

var ArrayPosiciones = ["POR", "DEF", "MED", "DEL"]
var pos

func Pos():
	match ArrayRoles:
		0:
			pos = ArrayPosiciones[0]
		1:
			pos = ArrayPosiciones[1]
		2:
			pos = ArrayPosiciones[1]
		3:
			pos = ArrayPosiciones[2]
		4:
			pos = ArrayPosiciones[2]
		5:
			pos = ArrayPosiciones[2]
		6:
			pos = ArrayPosiciones[3]
		7:
			pos = ArrayPosiciones[3]
			
	return pos

