extends CharacterBody2D

const SPEED = 50

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
# Se utiliza para que deje de mirar al objetivo y 
# mire al destino de la pelota


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
			look_at(objetivo)	
		var dis_obj = global_transform.origin.distance_to(objetivo)
		if dis_obj > 3:
			Desplazamiento()
		

func EncargadosFalta():
	if $Personal.encSaqueMedio == true:
		equipo_a.bodySacaMedio = self


func Pasar():
	var destinoPase = equipo_a.DestinoPase()
	Patear(destinoPase)

func Patear(destino):
	pateando = true
	look_at(destino)
	Ball.Patear(destino, speedBall)
	Ball.estadosPelota = "libre"
	pateando = false


func Conducir():
	objetivo = objetivoConducir
	if velocity != Vector2.ZERO:
		$AnimationPlayer.play("conduccion") 
	else: 	
		$AnimationPlayer.stop()


func Desplazamiento():
	direccion = global_position.direction_to(objetivo)
	direccion = direccion.normalized()
	velocity = direccion * SPEED
	move_and_slide()


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


