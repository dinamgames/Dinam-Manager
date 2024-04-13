extends Node2D

var enJuego : bool = false
var posesionTeam = "Nadie"
var isPelotaParada : bool = true
var enPartido : bool = false
var tipoPelotaParada

# Ejemplo Await: await get_tree().create_timer(1.0).timeout

func _ready():
	$FuncReinicio.InicioMatch()
	
	
func _process(_delta):
	if Input.is_action_just_pressed("enJuego"):
		if enJuego == false: 
			enJuego = true
		else: enJuego = false
	IsPelotaParada()


func IsPelotaParada():
	if isPelotaParada == true:
		TipoPelotaParada()
	else:
		EnPartido()

		
func TipoPelotaParada():
	match tipoPelotaParada:
		"Fuera":
			pass
		"Falta":
			pass
		"Gol":
			pass
		"FinTiempo":
			pass
			
			
func EnPartido():
	if enJuego == true:
		enPartido = true
