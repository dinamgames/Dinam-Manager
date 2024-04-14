extends Control

@onready var Match = get_tree().get_nodes_in_group("Match")[0]
@onready var Ball = get_tree().get_nodes_in_group("Ball")[0]
@onready var equipo_a = $"../../Players/EquipoA"
@onready var func_reinicio = $"../../FuncReinicio"
@onready var player_a_01 = $"../../Players/EquipoA/PlayerA01"
@onready var player_a_02 = $"../../Players/EquipoA/PlayerA02"


func _process(_delta):
	$VBoxContainer/Label1.text = "En juego: " + str(Match.enJuego)
	$VBoxContainer/Label2.text = "Posesion: " + Match.posesionTeam
	$VBoxContainer/Label3.text = "Body: " + str(Ball.bodyPlayer)
	$VBoxContainer/Label4.text = ( 
		"Position Ball: " + str(Ball.global_transform.origin)
	)
	$VBoxContainer/Label5.text = "Estado Ball: " + str(Ball.estadosPelota)
	$VBoxContainer/Label6.text = (
		"Jugador más cercano " + str(equipo_a.playerPorLaPelota)
	)
	$VBoxContainer/Label7.text = "Pelota Parada: " + str(Match.isPelotaParada)
	$VBoxContainer/Label8.text = "En Partido: " + str(Match.enPartido)



