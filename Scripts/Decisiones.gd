extends Node2D

var equipoPropio : bool = false
var tienePelota : bool = false
var areaTiroRival : bool = false
var rivalTapaTiro : bool = false
var rivalGK : bool = false
var rivalAreaLibertad : bool = false
var rivalRayoLibertad : bool = false
var playerCercano : bool = false

@onready var Match = $"../../../.."
@onready var player = $".."
@onready var ball = $"../../../../Ball"


func _process(_delta):
	if Match.enPartido == true:
		EquipoPropio()
		
		
func EquipoPropio():
	if Match.posesionTeam == player.equipo:
		PelotaLibre()
	else:
		TieneGKRival()
		
		
func TieneGKRival():
	pass
	
	
func PelotaLibre():
	if ball.estadosPelota == "libre":
		player.PlayerCercano()
	else:
		player.TienePelota()


	

