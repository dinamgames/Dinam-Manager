extends CharacterBody2D

var speed : float = 0.0
const SPEED_FINAL : float = 200.0

@export var accel : float
var speedBall : float

var equipo
var objetivo
var pos_ofensiva
var direccion : Vector2
var objetivoConducir : Vector2
var areaTiroRival : bool = false
var areaLibertad : bool = false
var rayoLibertad : bool = false
var playerCercano
var pateando : bool = false
var quieto : bool = false
var weight : float = 0.1

var destinoPase : Vector2
var distPase : float = 0.0



@onready var Ball = get_tree().get_nodes_in_group("Ball")[0]
@onready var Match = get_tree().get_nodes_in_group("Match")[0]

@onready var equipo_a = $".."
@onready var ballPie


func _ready():
	pos_ofensiva = $Personal.pos_ofensiva.global_transform.origin
	equipo = $Personal.equipo
	objetivoConducir = $Personal.objetivoConducir
	EncargadosFalta()


func _physics_process(_delta):
	LookAndMove()
	

func LookAndMove():
	ballPie = $ballPie.global_transform.origin

	if objetivo: 
		if pateando == false:
			Girar(objetivo)
		var dis_obj = global_transform.origin.distance_to(objetivo)
		if dis_obj > 3:
			Desplazamiento()
		else:
			Girar(Ball.global_transform.origin)


func EncargadosFalta():
	if $Personal.encSaqueMedio == true:
		equipo_a.bodySacaMedio = self


func powerPass():
	distPase = Ball.global_transform.origin.distance_to(destinoPase)
	speedBall = 900 # Convertir en Coef


func Quieto():
	quieto = true
	await get_tree().create_timer(1.0).timeout
	quieto = false


func Pasar():
	destinoPase = equipo_a.DestinoPase()
	equipo_a.receptorPase.Quieto() # Modificar por Estado Quieto
	#equipo_a.receptorPase.speed = 0
	if Ball.estadosPelota == "pelotaAlPie":
		set_collision_layer_value(2, false)
		powerPass()
		Patear(destinoPase)
		await get_tree().create_timer(0.5).timeout
		set_collision_layer_value(2, true)


func Patear(destino): 
	pateando = true
	Girar(objetivo)
	Ball.Patear(destino, speedBall)
	Ball.estadosPelota = "libre"
	await get_tree().create_timer(0.5).timeout
	pateando = false


func Conducir():
	objetivo = objetivoConducir
	Girar(objetivo)
	if velocity != Vector2.ZERO and Ball.estadosPelota == "pelotaAlPie":
		$AnimationPlayer.play("conduccion") 
	else: 	
		$AnimationPlayer.stop()


func Accel(speed_inicial):
	if quieto == false:
		speed = lerp(speed_inicial, SPEED_FINAL, accel)
	else:
		speed = 0
	return speed


func Desplazamiento():
	if velocity == Vector2.ZERO:
		speed = 0
	direccion = global_position.direction_to(objetivo)
	direccion = direccion.normalized()
	Accel(speed)
	var speed_accel = Accel(speed)
	velocity = direccion * speed_accel
	if pateando == false or quieto == false:
		move_and_slide()


func Girar(destino):
	var origen = global_transform.origin
	var angulo_destino = (origen - destino).normalized().angle()
	rotation = lerp_angle(rotation, angulo_destino, weight)


func PlayerCercano():
	playerCercano = equipo_a.DisPlayersPelota()
	if playerCercano == self:
		objetivo = Ball.objetivoPelota
	else:
		objetivo = pos_ofensiva
	

func TienePelota():
	if Ball.bodyPlayer == self:
		AreaTiroRival()
	else:
		if quieto == false:
			objetivo = pos_ofensiva
		else:
			objetivo = global_transform.origin
			direccion = Vector2.ZERO
		
		
func AreaTiroRival():
	if areaTiroRival == true:
		Pasar()
	else:
		Conducir()


