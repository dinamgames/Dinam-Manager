extends Node2D

var ArrayPlayersPelota = [0, 1,]
var playerPorLaPelota
var destinoPase : Vector2 = Vector2.ZERO
var bodySacaMedio

@onready var Player01 = $PlayerA01
@onready var Player02 = $PlayerA02
@onready var Ball = get_tree().get_nodes_in_group("Ball")[0]

func _process(_delta):
	DisPlayersPelota()
	DestinoPase()

func DisPlayersPelota():
	ArrayPlayersPelota[0] = ( 
		Player01.global_position.distance_to(Ball.global_transform.origin)
	)
	ArrayPlayersPelota[1] = (
		Player02.global_position.distance_to(Ball.global_transform.origin)
	)
			
	if ArrayPlayersPelota.min() == ArrayPlayersPelota[0]: 
		playerPorLaPelota = Player01
	if ArrayPlayersPelota.min() == ArrayPlayersPelota[1]: 
		playerPorLaPelota = Player02
	
	return playerPorLaPelota
	
		
		
func DestinoPase(): # Esta función reemplazarla por la elección de pase
	if Ball.bodyPlayer == Player01:
		destinoPase = Player02.global_transform.origin
	else:
		destinoPase = Player01.global_transform.origin
		
	return destinoPase
		
	

# SEÑALES
func _on_area_disparo_body_entered(body):
	if body.is_in_group("Player"):
		body.areaTiroRival = true



func _on_area_disparo_body_exited(body):
	if body.is_in_group("Player"):
		body.areaTiroRival = false
