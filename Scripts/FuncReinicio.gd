extends Node2D

var equipoStart

@onready var Ball = get_tree().get_nodes_in_group("Ball")[0]
@onready var saque_medio = $"../Escenario/PuntosReinicio/SaqueMedio"
@onready var saque_medioA = $"../Players/EquipoA/PuntosReinicio/SaqueMedio"
@onready var equipo_a = $"../Players/EquipoA"
@onready var Match = $".."

func InicioMatch():
	equipoStart = "EquipoA"
	Match.posesionTeam = equipoStart
	match equipoStart:
		"EquipoA":
			Ball.global_transform.origin = saque_medio.global_transform.origin
			equipo_a.bodySacaMedio.global_transform.origin = (
				saque_medioA.global_transform.origin
		)
			equipo_a.bodySacaMedio.objetivo = Ball.global_transform.origin
			# Reemplazar esto por una función que acomode a todos los jugadores 
			# en el saque del medio
			SaqueMedio()
		"EquipoB":
			pass
		

func SaqueMedio():
	await get_tree().create_timer(1.0).timeout
	ReinicioPelotaParada()

func ReinicioPelotaParada():
	Match.enJuego = true

		
