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
var zonaTactica
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

func ZonasTacticas():
	match zonaTactica:
		"Zona01":
			pass
		"Zona02":
			pass
		"Zona03":
			pass
		"Zona04":
			pass
		"Zona05":
			pass
		"Zona06":
			pass
		"Zona07":
			pass
		"Zona08":
			pass
		"Zona09":
			pass
		"Zona10":
			pass
		"Zona11":
			pass
		"Zona12":
			pass
		"Zona13":
			pass
		"Zona14":
			pass
		"Zona15":
			pass
		"Zona16":
			pass
		"Zona17":
			pass
		"Zona18":
			pass
		"Zona19":
			pass
		"Zona20":
			pass
		"Zona21":
			pass
		"Zona22":
			pass
		"Zona23":
			pass
		"Zona24":
			pass
		"Zona25":
			pass
		"Zona26":
			pass


func _on_zona_1_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona01"


func _on_zona_2_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona02"


func _on_zona_3_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona03"


func _on_zona_4_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona04"


func _on_zona_5_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona05"


func _on_zona_6_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona06"


func _on_zona_7_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona07"


func _on_zona_8_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona08"


func _on_zona_9_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona09"


func _on_zona_10_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona10"


func _on_zona_11_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona11"


func _on_zona_12_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona12"


func _on_zona_13_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona13"


func _on_zona_14_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona14"


func _on_zona_15_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona15"


func _on_zona_16_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona16"


func _on_zona_17_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona17"


func _on_zona_18_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona18"


func _on_zona_19_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona19"


func _on_zona_20_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona20"


func _on_zona_21_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona21"


func _on_zona_22_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona22"


func _on_zona_23_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona23"


func _on_zona_24_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona24"


func _on_zona_25_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona25"


func _on_zona_26_body_entered(body):
	if body.is_in_group("Ball"):
		zonaTactica = "Zona26"
