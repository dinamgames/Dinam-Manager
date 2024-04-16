extends CharacterBody2D

var speed : float = 0.0
const SPEED_FINAL : float = 200.0

@export var speedBall : float

#if equipo_a.PlayerPorLaPelota == self: EJEMPLO

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
var weight : float = 0.1


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
	ballPie = $ballPie.global_transform.origin
	
	if objetivo: 
		if pateando == false:
			Girar(objetivo)
		var dis_obj = global_transform.origin.distance_to(objetivo)
		if dis_obj > 3:
			Desplazamiento()
		

func EncargadosFalta():
	if $Personal.encSaqueMedio == true:
		equipo_a.bodySacaMedio = self


func Pasar():
	var destinoPase = equipo_a.DestinoPase()
	if Ball.estadosPelota == "pelotaAlPie":
		set_collision_layer_value(2, false)
		Patear(destinoPase)
		await get_tree().create_timer(0.5).timeout
		set_collision_layer_value(2, true)


func Patear(destino):
	pateando = true
	Girar(objetivo)
	Ball.Patear(destino, speedBall)
	Ball.estadosPelota = "libre"
	pateando = false


func Conducir():
	objetivo = objetivoConducir
	Girar(objetivo)
	if velocity != Vector2.ZERO:
		$AnimationPlayer.play("conduccion") 
	else: 	
		$AnimationPlayer.stop()

func Accel(speed_inicial):
	speed = lerp(speed_inicial, SPEED_FINAL, 0.025)
	return speed

func Desplazamiento():
	if velocity == Vector2.ZERO:
		speed = 0
	direccion = global_position.direction_to(objetivo)
	direccion = direccion.normalized()
	Accel(speed)
	var speed_accel = Accel(speed)
	velocity = direccion * speed_accel
	move_and_slide()


func Girar(destino):
	var origen = global_transform.origin
	var angulo_destino = (origen - destino).normalized().angle()
	rotation = lerp_angle(rotation, angulo_destino, weight)


func MovManual():
	direccion = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		direccion.y = -1
	if Input.is_action_pressed("ui_down"):
		direccion.y = 1
	if Input.is_action_pressed("ui_right"):
		direccion.x = 1
	if Input.is_action_pressed("ui_left"):
		direccion.x = -1


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
		objetivo = pos_ofensiva
		
		
func AreaTiroRival():
	if areaTiroRival == true:
		Pasar()
	else:
		Conducir()


