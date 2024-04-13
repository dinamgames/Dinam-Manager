extends RigidBody2D

var estadosPelota = "libre"
var direccion : Vector2
var bodyPlayer
var objetivoPelota : Vector2
var altura : int = 0

@onready var Match = get_tree().get_nodes_in_group("Match")[0]


func _physics_process(_delta):
	ObjetivoPelota()
	if bodyPlayer:
		EstadosPelota()
		
	
func EstadosPelota():
	match estadosPelota:
		"libre":
			pass
		"pelotaAlPie":
			linear_velocity = Vector2.ZERO
			Match.posesionTeam = bodyPlayer.equipo
			global_transform.origin = bodyPlayer.ballPie
		"pelotaALaMano": 
			pass


func ObjetivoPelota():
	if altura == 0:
		objetivoPelota = global_transform.origin


func Patear(destino : Vector2, speedBall):
	direccion = global_position.direction_to(destino)
	direccion = direccion.normalized()
	var impulso = direccion * speedBall
	linear_velocity = Vector2.ZERO
	apply_central_impulse(impulso)
	

func _on_ball_area_body_entered(body):
	if body.is_in_group("Player"):
		bodyPlayer = body
		if Match.isPelotaParada == true:
			bodyPlayer.Pasar()
			Match.isPelotaParada = false
		else:
			estadosPelota = "pelotaAlPie"


func _on_ball_area_body_exited(_body):
	pass
	#if body.is_in_group("Player"):
	#	estadosPelota = "libre"
	#	bodyPlayer = null
	
