extends Node

var posOfensivas = {}
var posDefensivas = {}
var posZonaZeroOf : Vector2
var posZonaZeroDef : Vector2
var relativoX : int 
var relativoY : int 
var difOfZona01 : Vector2
var difOfZona02 : Vector2
var difOfZona03 : Vector2
var difOfZona04 : Vector2
var difOfZona05 : Vector2
var difOfZona06 : Vector2
var difOfZona07 : Vector2
var difOfZona08 : Vector2
var difOfZona09 : Vector2
var difOfZona10 : Vector2
var difOfZona11 : Vector2
var difOfZona12 : Vector2
var difOfZona13 : Vector2
var difOfZona14 : Vector2
var difOfZona15 : Vector2
var difOfZona16 : Vector2
var difOfZona17 : Vector2
var difOfZona18 : Vector2
var difOfZona19 : Vector2
var difOfZona20 : Vector2
var difOfZona21 : Vector2
var difOfZona22 : Vector2
var difOfZona23 : Vector2
var difOfZona24 : Vector2
var difOfZona25 : Vector2
var difOfZona26 : Vector2
var difDefZona01 : Vector2
var difDefZona02 : Vector2
var difDefZona03 : Vector2
var difDefZona04 : Vector2
var difDefZona05 : Vector2
var difDefZona06 : Vector2
var difDefZona07 : Vector2
var difDefZona08 : Vector2
var difDefZona09 : Vector2
var difDefZona10 : Vector2
var difDefZona11 : Vector2
var difDefZona12 : Vector2
var difDefZona13 : Vector2
var difDefZona14 : Vector2
var difDefZona15 : Vector2
var difDefZona16 : Vector2
var difDefZona17 : Vector2
var difDefZona18 : Vector2
var difDefZona19 : Vector2
var difDefZona20 : Vector2
var difDefZona21 : Vector2
var difDefZona22 : Vector2
var difDefZona23 : Vector2
var difDefZona24 : Vector2
var difDefZona25 : Vector2
var difDefZona26 : Vector2

@onready var res_players = $".."

@onready var of00 = $"../../Zona00/Ofensivas/Control2/ButtonP04"
@onready var of01 = $"../../Zona01/Ofensivas/Control2/ButtonP04"
@onready var of02 = $"../../Zona02/Ofensivas/Control2/ButtonP04"
@onready var of03 = $"../../Zona03/Ofensivas/Control2/ButtonP04"
@onready var of04 = $"../../Zona04/Ofensivas/Control2/ButtonP04"
@onready var of05 = $"../../Zona05/Ofensivas/Control2/ButtonP04"
@onready var of06 = $"../../Zona06/Ofensivas/Control2/ButtonP04"
@onready var of07 = $"../../Zona07/Ofensivas/Control2/ButtonP04"
@onready var of08 = $"../../Zona08/Ofensivas/Control2/ButtonP04"
@onready var of09 = $"../../Zona09/Ofensivas/Control2/ButtonP04"
@onready var of10 = $"../../Zona10/Ofensivas/Control2/ButtonP04"
@onready var of11 = $"../../Zona11/Ofensivas/Control2/ButtonP04"
@onready var of12 = $"../../Zona12/Ofensivas/Control2/ButtonP04"
@onready var of13 = $"../../Zona13/Ofensivas/Control2/ButtonP04"
@onready var of14 = $"../../Zona14/Ofensivas/Control2/ButtonP04"
@onready var of15 = $"../../Zona15/Ofensivas/Control2/ButtonP04"
@onready var of16 = $"../../Zona16/Ofensivas/Control2/ButtonP04"
@onready var of17 = $"../../Zona17/Ofensivas/Control2/ButtonP04"
@onready var of18 = $"../../Zona18/Ofensivas/Control2/ButtonP04"
@onready var of19 = $"../../Zona19/Ofensivas/Control2/ButtonP04"
@onready var of20 = $"../../Zona20/Ofensivas/Control2/ButtonP04"
@onready var of21 = $"../../Zona21/Ofensivas/Control2/ButtonP04"
@onready var of22 = $"../../Zona22/Ofensivas/Control2/ButtonP04"
@onready var of23 = $"../../Zona23/Ofensivas/Control2/ButtonP04"
@onready var of24 = $"../../Zona24/Ofensivas/Control2/ButtonP04"
@onready var of25 = $"../../Zona25/Ofensivas/Control2/ButtonP04"
@onready var of26 = $"../../Zona26/Ofensivas/Control2/ButtonP04"

@onready var def00 = $"../../Zona00/Defensivas/Control2/ButtonP04"
@onready var def01 = $"../../Zona01/Defensivas/Control2/ButtonP04"
@onready var def02 = $"../../Zona02/Defensivas/Control2/ButtonP04"
@onready var def03 = $"../../Zona03/Defensivas/Control2/ButtonP04"
@onready var def04 = $"../../Zona04/Defensivas/Control2/ButtonP04"
@onready var def05 = $"../../Zona05/Defensivas/Control2/ButtonP04"
@onready var def06 = $"../../Zona06/Defensivas/Control2/ButtonP04"
@onready var def07 = $"../../Zona07/Defensivas/Control2/ButtonP04"
@onready var def08 = $"../../Zona08/Defensivas/Control2/ButtonP04"
@onready var def09 = $"../../Zona09/Defensivas/Control2/ButtonP04"
@onready var def10 = $"../../Zona10/Defensivas/Control2/ButtonP04"
@onready var def11 = $"../../Zona11/Defensivas/Control2/ButtonP04"
@onready var def12 = $"../../Zona12/Defensivas/Control2/ButtonP04"
@onready var def13 = $"../../Zona13/Defensivas/Control2/ButtonP04"
@onready var def14 = $"../../Zona14/Defensivas/Control2/ButtonP04"
@onready var def15 = $"../../Zona15/Defensivas/Control2/ButtonP04"
@onready var def16 = $"../../Zona16/Defensivas/Control2/ButtonP04"
@onready var def17 = $"../../Zona17/Defensivas/Control2/ButtonP04"
@onready var def18 = $"../../Zona18/Defensivas/Control2/ButtonP04"
@onready var def19 = $"../../Zona19/Defensivas/Control2/ButtonP04"
@onready var def20 = $"../../Zona20/Defensivas/Control2/ButtonP04"
@onready var def21 = $"../../Zona21/Defensivas/Control2/ButtonP04"
@onready var def22 = $"../../Zona22/Defensivas/Control2/ButtonP04"
@onready var def23 = $"../../Zona23/Defensivas/Control2/ButtonP04"
@onready var def24 = $"../../Zona24/Defensivas/Control2/ButtonP04"
@onready var def25 = $"../../Zona25/Defensivas/Control2/ButtonP04"
@onready var def26 = $"../../Zona26/Defensivas/Control2/ButtonP04"

@onready var marker01 = $"../../../../ZonasCancha/MarkersZonaCero/1"
@onready var marker02 = $"../../../../ZonasCancha/MarkersZonaCero/2"
@onready var marker03 = $"../../../../ZonasCancha/MarkersZonaCero/3"
@onready var marker04 = $"../../../../ZonasCancha/MarkersZonaCero/4"
@onready var marker05 = $"../../../../ZonasCancha/MarkersZonaCero/5"
@onready var marker06 = $"../../../../ZonasCancha/MarkersZonaCero/6"
@onready var marker07 = $"../../../../ZonasCancha/MarkersZonaCero/7"
@onready var marker08 = $"../../../../ZonasCancha/MarkersZonaCero/8"
@onready var marker09 = $"../../../../ZonasCancha/MarkersZonaCero/9"
@onready var marker10 = $"../../../../ZonasCancha/MarkersZonaCero/10"
@onready var marker11 = $"../../../../ZonasCancha/MarkersZonaCero/11"
@onready var marker12 = $"../../../../ZonasCancha/MarkersZonaCero/12"
@onready var marker13 = $"../../../../ZonasCancha/MarkersZonaCero/13"
@onready var marker14 = $"../../../../ZonasCancha/MarkersZonaCero/14"
@onready var marker15 = $"../../../../ZonasCancha/MarkersZonaCero/15"
@onready var marker16 = $"../../../../ZonasCancha/MarkersZonaCero/16"
@onready var marker17 = $"../../../../ZonasCancha/MarkersZonaCero/17"
@onready var marker18 = $"../../../../ZonasCancha/MarkersZonaCero/18"
@onready var marker19 = $"../../../../ZonasCancha/MarkersZonaCero/19"
@onready var marker20 = $"../../../../ZonasCancha/MarkersZonaCero/20"
@onready var marker21 = $"../../../../ZonasCancha/MarkersZonaCero/21"
@onready var marker22 = $"../../../../ZonasCancha/MarkersZonaCero/22"
@onready var marker23 = $"../../../../ZonasCancha/MarkersZonaCero/23"
@onready var marker24 = $"../../../../ZonasCancha/MarkersZonaCero/24"
@onready var marker25 = $"../../../../ZonasCancha/MarkersZonaCero/25"
@onready var marker26 = $"../../../../ZonasCancha/MarkersZonaCero/26"
@onready var marker27 = $"../../../../ZonasCancha/MarkersZonaCero/27"
@onready var marker28 = $"../../../../ZonasCancha/MarkersZonaCero/28"
@onready var marker29 = $"../../../../ZonasCancha/MarkersZonaCero/29"
@onready var marker30 = $"../../../../ZonasCancha/MarkersZonaCero/30"
@onready var marker31 = $"../../../../ZonasCancha/MarkersZonaCero/31"
@onready var marker32 = $"../../../../ZonasCancha/MarkersZonaCero/32"
@onready var marker33 = $"../../../../ZonasCancha/MarkersZonaCero/33"
@onready var marker34 = $"../../../../ZonasCancha/MarkersZonaCero/34"
@onready var marker35 = $"../../../../ZonasCancha/MarkersZonaCero/35"
@onready var marker36 = $"../../../../ZonasCancha/MarkersZonaCero/36"
@onready var marker37 = $"../../../../ZonasCancha/MarkersZonaCero/37"
@onready var marker38 = $"../../../../ZonasCancha/MarkersZonaCero/38"
@onready var marker39 = $"../../../../ZonasCancha/MarkersZonaCero/39"
@onready var marker40 = $"../../../../ZonasCancha/MarkersZonaCero/40"
@onready var marker41 = $"../../../../ZonasCancha/MarkersZonaCero/41"

@onready var zona_01 = $"../../Zona01"
@onready var zona_02 = $"../../Zona02"
@onready var zona_03 = $"../../Zona03"
@onready var zona_04 = $"../../Zona04"
@onready var zona_05 = $"../../Zona05"
@onready var zona_06 = $"../../Zona06"
@onready var zona_07 = $"../../Zona07"
@onready var zona_08 = $"../../Zona08"
@onready var zona_09 = $"../../Zona09"
@onready var zona_10 = $"../../Zona10"
@onready var zona_11 = $"../../Zona11"
@onready var zona_12 = $"../../Zona12"
@onready var zona_13 = $"../../Zona13"
@onready var zona_14 = $"../../Zona14"
@onready var zona_15 = $"../../Zona15"
@onready var zona_16 = $"../../Zona16"
@onready var zona_17 = $"../../Zona17"
@onready var zona_18 = $"../../Zona18"
@onready var zona_19 = $"../../Zona19"
@onready var zona_20 = $"../../Zona20"
@onready var zona_21 = $"../../Zona21"
@onready var zona_22 = $"../../Zona22"
@onready var zona_23 = $"../../Zona23"
@onready var zona_24 = $"../../Zona24"
@onready var zona_25 = $"../../Zona25"
@onready var zona_26 = $"../../Zona26"

func _ready():
	relativoX = res_players.relativoX
	relativoY = res_players.relativoY

func _process(_delta):
	Ofensivas()
	Defensivas()


func Ofensivas():
	posOfensivas = {
		"Zona00" = of00.global_position,
		"Zona01" = of01.global_position,
		"Zona02" = of02.global_position,
		"Zona03" = of03.global_position,
		"Zona04" = of04.global_position,
		"Zona05" = of05.global_position,
		"Zona06" = of06.global_position,
		"Zona07" = of07.global_position,
		"Zona08" = of08.global_position,
		"Zona09" = of09.global_position,
		"Zona10" = of10.global_position,
		"Zona11" = of11.global_position,
		"Zona12" = of12.global_position,
		"Zona13" = of13.global_position,
		"Zona14" = of14.global_position,
		"Zona15" = of15.global_position,
		"Zona16" = of16.global_position,
		"Zona17" = of17.global_position,
		"Zona18" = of18.global_position,
		"Zona19" = of19.global_position,
		"Zona20" = of20.global_position,
		"Zona21" = of21.global_position,
		"Zona22" = of22.global_position,
		"Zona23" = of23.global_position,
		"Zona24" = of24.global_position,
		"Zona25" = of25.global_position,
		"Zona26" = of26.global_position,
	}
	
func Defensivas():
	posOfensivas = {
		"Zona00" = def00.global_position,
		"Zona01" = def01.global_position,
		"Zona02" = def02.global_position,
		"Zona03" = def03.global_position,
		"Zona04" = def04.global_position,
		"Zona05" = def05.global_position,
		"Zona06" = def06.global_position,
		"Zona07" = def07.global_position,
		"Zona08" = def08.global_position,
		"Zona09" = def09.global_position,
		"Zona10" = def10.global_position,
		"Zona11" = def11.global_position,
		"Zona12" = def12.global_position,
		"Zona13" = def13.global_position,
		"Zona14" = def14.global_position,
		"Zona15" = def15.global_position,
		"Zona16" = def16.global_position,
		"Zona17" = def17.global_position,
		"Zona18" = def18.global_position,
		"Zona19" = def19.global_position,
		"Zona20" = def20.global_position,
		"Zona21" = def21.global_position,
		"Zona22" = def22.global_position,
		"Zona23" = def23.global_position,
		"Zona24" = def24.global_position,
		"Zona25" = def25.global_position,
		"Zona26" = def26.global_position,
	}
	
	
func CalcZonaZero():
	var suma_zona_zero_of = (
		of01.global_position +
		of02.global_position +
		of03.global_position +
		of04.global_position +
		of05.global_position +
		of06.global_position +
		of07.global_position +
		of08.global_position +
		of09.global_position +
		of10.global_position +
		of11.global_position +
		of12.global_position +
		of13.global_position +
		of14.global_position +
		of15.global_position +
		of16.global_position +
		of17.global_position +
		of18.global_position +
		of19.global_position +
		of20.global_position +
		of21.global_position +
		of22.global_position +
		of23.global_position +
		of24.global_position +
		of25.global_position +
		of26.global_position 
	)
	of00.global_position = suma_zona_zero_of / 26
	
	var suma_zona_zero_def = (
		def01.global_position +
		def02.global_position +
		def03.global_position +
		def04.global_position +
		def05.global_position +
		def06.global_position +
		def07.global_position +
		def08.global_position +
		def09.global_position +
		def10.global_position +
		def11.global_position +
		def12.global_position +
		def13.global_position +
		def14.global_position +
		def15.global_position +
		def16.global_position +
		def17.global_position +
		def18.global_position +
		def19.global_position +
		def20.global_position +
		def21.global_position +
		def22.global_position +
		def23.global_position +
		def24.global_position +
		def25.global_position +
		def26.global_position 
	)
	def00.global_position = suma_zona_zero_def / 26
	
	
func PromZonaZeroOf():
	# ZONA 01
	if (of00.global_position.x > marker01.global_position.x and
		of00.global_position.x < marker02.global_position.x and
		of00.global_position.y > marker01.global_position.y and
		of00.global_position.y < marker02.global_position.y
	):
			posZonaZeroOf = Vector2(1, 1)

	#ZONA 02
	if (of00.global_position.x > marker09.global_position.x and
		of00.global_position.x < marker10.global_position.x and
		of00.global_position.y > marker09.global_position.y and
		of00.global_position.y < marker10.global_position.y
	):
			posZonaZeroOf = Vector2(1, 2)
	
	#ZONA 03
	if (of00.global_position.x > marker19.global_position.x and
		of00.global_position.x < marker20.global_position.x and
		of00.global_position.y > marker19.global_position.y and
		of00.global_position.y < marker20.global_position.y
	):
			posZonaZeroOf = Vector2(1, 3)
	
	#ZONA 04
	if (of00.global_position.x > marker35.global_position.x and
		of00.global_position.x < marker33.global_position.x and
		of00.global_position.y > marker35.global_position.y and
		of00.global_position.y < marker33.global_position.y
	):
			posZonaZeroOf = Vector2(1, 4)
	
	#ZONA 05
	if (of00.global_position.x > marker34.global_position.x and
		of00.global_position.x < marker37.global_position.x and
		of00.global_position.y > marker34.global_position.y and
		of00.global_position.y < marker37.global_position.y
	):
			posZonaZeroOf = Vector2(1, 5)
	
	#ZONA 06
	if (of00.global_position.x > marker11.global_position.x and
		of00.global_position.x < marker12.global_position.x and
		of00.global_position.y > marker11.global_position.y and
		of00.global_position.y < marker12.global_position.y
	):
			posZonaZeroOf = Vector2(2, 2)
			
	#ZONA 07
	if (of00.global_position.x > marker10.global_position.x and
		of00.global_position.x < marker21.global_position.x and
		of00.global_position.y > marker10.global_position.y and
		of00.global_position.y < marker21.global_position.y
	):
			posZonaZeroOf = Vector2(2, 3)
			
	#ZONA 08
	if (of00.global_position.x > marker20.global_position.x and
		of00.global_position.x < marker31.global_position.x and
		of00.global_position.y > marker20.global_position.y and
		of00.global_position.y < marker31.global_position.y
	):
			posZonaZeroOf = Vector2(2, 4)
			
	#ZONA 09
	if (of00.global_position.x > marker03.global_position.x and
		of00.global_position.x < marker04.global_position.x and
		of00.global_position.y > marker03.global_position.y and
		of00.global_position.y < marker04.global_position.y
	):
			posZonaZeroOf = Vector2(3, 1)
			
	#ZONA 10
	if (of00.global_position.x > marker13.global_position.x and
		of00.global_position.x < marker14.global_position.x and
		of00.global_position.y > marker13.global_position.y and
		of00.global_position.y < marker14.global_position.y
	):
			posZonaZeroOf = Vector2(3, 2)
			
	#ZONA 11
	if (of00.global_position.x > marker12.global_position.x and
		of00.global_position.x < marker22.global_position.x and
		of00.global_position.y > marker12.global_position.y and
		of00.global_position.y < marker22.global_position.y
	):
			posZonaZeroOf = Vector2(3, 3)
			
	#ZONA 12
	if (of00.global_position.x > marker21.global_position.x and
		of00.global_position.x < marker30.global_position.x and
		of00.global_position.y > marker21.global_position.y and
		of00.global_position.y < marker30.global_position.y
	):
			posZonaZeroOf = Vector2(3, 4)
			
	#ZONA 13
	if (of00.global_position.x > marker32.global_position.x and
		of00.global_position.x < marker38.global_position.x and
		of00.global_position.y > marker32.global_position.y and
		of00.global_position.y < marker38.global_position.y
	):
			posZonaZeroOf = Vector2(3, 5)
			
	#ZONA 14
	if (of00.global_position.x > marker05.global_position.x and
		of00.global_position.x < marker06.global_position.x and
		of00.global_position.y > marker05.global_position.y and
		of00.global_position.y < marker06.global_position.y
	):
			posZonaZeroOf = Vector2(4, 1)
			
	#ZONA 15
	if (of00.global_position.x > marker04.global_position.x and
		of00.global_position.x < marker24.global_position.x and
		of00.global_position.y > marker04.global_position.y and
		of00.global_position.y < marker24.global_position.y
	):
			posZonaZeroOf = Vector2(4, 2)
			
	#ZONA 16
	if (of00.global_position.x > marker14.global_position.x and
		of00.global_position.x < marker23.global_position.x and
		of00.global_position.y > marker14.global_position.y and
		of00.global_position.y < marker23.global_position.y
	):
			posZonaZeroOf = Vector2(4, 3)
			
	#ZONA 17
	if (of00.global_position.x > marker22.global_position.x and
		of00.global_position.x < marker29.global_position.x and
		of00.global_position.y > marker22.global_position.y and
		of00.global_position.y < marker29.global_position.y
	):
			posZonaZeroOf = Vector2(4, 4)
			
	#ZONA 18
	if (of00.global_position.x > marker30.global_position.x and
		of00.global_position.x < marker39.global_position.x and
		of00.global_position.y > marker30.global_position.y and
		of00.global_position.y < marker39.global_position.y
	):
			posZonaZeroOf = Vector2(4, 5)
			
	#ZONA 19
	if (of00.global_position.x > marker15.global_position.x and
		of00.global_position.x < marker16.global_position.x and
		of00.global_position.y > marker15.global_position.y and
		of00.global_position.y < marker16.global_position.y
	):
			posZonaZeroOf = Vector2(5, 2)
			
	#ZONA 20
	if (of00.global_position.x > marker24.global_position.x and
		of00.global_position.x < marker25.global_position.x and
		of00.global_position.y > marker24.global_position.y and
		of00.global_position.y < marker25.global_position.y
	):
			posZonaZeroOf = Vector2(5, 3)
			
	#ZONA 21
	if (of00.global_position.x > marker23.global_position.x and
		of00.global_position.x < marker28.global_position.x and
		of00.global_position.y > marker23.global_position.y and
		of00.global_position.y < marker28.global_position.y
	):
			posZonaZeroOf = Vector2(5, 4)
			
	#ZONA 22
	if (of00.global_position.x > marker07.global_position.x and
		of00.global_position.x < marker08.global_position.x and
		of00.global_position.y > marker07.global_position.y and
		of00.global_position.y < marker08.global_position.y
	):
			posZonaZeroOf = Vector2(6, 1)
			
	#ZONA 23
	if (of00.global_position.x > marker17.global_position.x and
		of00.global_position.x < marker18.global_position.x and
		of00.global_position.y > marker17.global_position.y and
		of00.global_position.y < marker18.global_position.y
	):
			posZonaZeroOf = Vector2(6, 2)
	
	#ZONA 24
	if (of00.global_position.x > marker16.global_position.x and
		of00.global_position.x < marker26.global_position.x and
		of00.global_position.y > marker16.global_position.y and
		of00.global_position.y < marker26.global_position.y
	):
			posZonaZeroOf = Vector2(6, 3)
			
	#ZONA 25
	if (of00.global_position.x > marker25.global_position.x and
		of00.global_position.x < marker27.global_position.x and
		of00.global_position.y > marker25.global_position.y and
		of00.global_position.y < marker27.global_position.y
	):
			posZonaZeroOf = Vector2(6, 4)
			
	#ZONA 26
	if (of00.global_position.x > marker41.global_position.x and
		of00.global_position.x < marker40.global_position.x and
		of00.global_position.y > marker41.global_position.y and
		of00.global_position.y < marker40.global_position.y
	):
			posZonaZeroOf = Vector2(6, 5)
	
	CalculoVectores()


func PromZonaZeroDef():
	# ZONA 01
	if (def00.global_position.x > marker01.global_position.x and
		def00.global_position.x < marker02.global_position.x and
		def00.global_position.y > marker01.global_position.y and
		def00.global_position.y < marker02.global_position.y
	):
			posZonaZeroDef = Vector2(1, 1)

	#ZONA 02
	if (def00.global_position.x > marker09.global_position.x and
		def00.global_position.x < marker10.global_position.x and
		def00.global_position.y > marker09.global_position.y and
		def00.global_position.y < marker10.global_position.y
	):
			posZonaZeroDef = Vector2(1, 2)
	
	#ZONA 03
	if (def00.global_position.x > marker19.global_position.x and
		def00.global_position.x < marker20.global_position.x and
		def00.global_position.y > marker19.global_position.y and
		def00.global_position.y < marker20.global_position.y
	):
			posZonaZeroDef = Vector2(1, 3)
	
	#ZONA 04
	if (def00.global_position.x > marker35.global_position.x and
		def00.global_position.x < marker33.global_position.x and
		def00.global_position.y > marker35.global_position.y and
		def00.global_position.y < marker33.global_position.y
	):
			posZonaZeroDef = Vector2(1, 4)
	
	#ZONA 05
	if (def00.global_position.x > marker34.global_position.x and
		def00.global_position.x < marker37.global_position.x and
		def00.global_position.y > marker34.global_position.y and
		def00.global_position.y < marker37.global_position.y
	):
			posZonaZeroDef = Vector2(1, 5)
	
	#ZONA 06
	if (def00.global_position.x > marker11.global_position.x and
		def00.global_position.x < marker12.global_position.x and
		def00.global_position.y > marker11.global_position.y and
		def00.global_position.y < marker12.global_position.y
	):
			posZonaZeroDef = Vector2(2, 2)
			
	#ZONA 07
	if (def00.global_position.x > marker10.global_position.x and
		def00.global_position.x < marker21.global_position.x and
		def00.global_position.y > marker10.global_position.y and
		def00.global_position.y < marker21.global_position.y
	):
			posZonaZeroDef = Vector2(2, 3)
			
	#ZONA 08
	if (def00.global_position.x > marker20.global_position.x and
		def00.global_position.x < marker31.global_position.x and
		def00.global_position.y > marker20.global_position.y and
		def00.global_position.y < marker31.global_position.y
	):
			posZonaZeroDef = Vector2(2, 4)
			
	#ZONA 09
	if (def00.global_position.x > marker03.global_position.x and
		def00.global_position.x < marker04.global_position.x and
		def00.global_position.y > marker03.global_position.y and
		def00.global_position.y < marker04.global_position.y
	):
			posZonaZeroDef = Vector2(3, 1)
			
	#ZONA 10
	if (def00.global_position.x > marker13.global_position.x and
		def00.global_position.x < marker14.global_position.x and
		def00.global_position.y > marker13.global_position.y and
		def00.global_position.y < marker14.global_position.y
	):
			posZonaZeroDef = Vector2(3, 2)
			
	#ZONA 11
	if (def00.global_position.x > marker12.global_position.x and
		def00.global_position.x < marker22.global_position.x and
		def00.global_position.y > marker12.global_position.y and
		def00.global_position.y < marker22.global_position.y
	):
			posZonaZeroDef = Vector2(3, 3)
			
	#ZONA 12
	if (def00.global_position.x > marker21.global_position.x and
		def00.global_position.x < marker30.global_position.x and
		def00.global_position.y > marker21.global_position.y and
		def00.global_position.y < marker30.global_position.y
	):
			posZonaZeroDef = Vector2(3, 4)
			
	#ZONA 13
	if (def00.global_position.x > marker32.global_position.x and
		def00.global_position.x < marker38.global_position.x and
		def00.global_position.y > marker32.global_position.y and
		def00.global_position.y < marker38.global_position.y
	):
			posZonaZeroDef = Vector2(3, 5)
			
	#ZONA 14
	if (def00.global_position.x > marker05.global_position.x and
		def00.global_position.x < marker06.global_position.x and
		def00.global_position.y > marker05.global_position.y and
		def00.global_position.y < marker06.global_position.y
	):
			posZonaZeroDef = Vector2(4, 1)
			
	#ZONA 15
	if (def00.global_position.x > marker04.global_position.x and
		def00.global_position.x < marker24.global_position.x and
		def00.global_position.y > marker04.global_position.y and
		def00.global_position.y < marker24.global_position.y
	):
			posZonaZeroDef = Vector2(4, 2)
			
	#ZONA 16
	if (def00.global_position.x > marker14.global_position.x and
		def00.global_position.x < marker23.global_position.x and
		def00.global_position.y > marker14.global_position.y and
		def00.global_position.y < marker23.global_position.y
	):
			posZonaZeroDef = Vector2(4, 3)
			
	#ZONA 17
	if (def00.global_position.x > marker22.global_position.x and
		def00.global_position.x < marker29.global_position.x and
		def00.global_position.y > marker22.global_position.y and
		def00.global_position.y < marker29.global_position.y
	):
			posZonaZeroDef = Vector2(4, 4)
			
	#ZONA 18
	if (def00.global_position.x > marker30.global_position.x and
		def00.global_position.x < marker39.global_position.x and
		def00.global_position.y > marker30.global_position.y and
		def00.global_position.y < marker39.global_position.y
	):
			posZonaZeroDef = Vector2(4, 5)
			
	#ZONA 19
	if (def00.global_position.x > marker15.global_position.x and
		def00.global_position.x < marker16.global_position.x and
		def00.global_position.y > marker15.global_position.y and
		def00.global_position.y < marker16.global_position.y
	):
			posZonaZeroDef = Vector2(5, 2)
			
	#ZONA 20
	if (def00.global_position.x > marker24.global_position.x and
		def00.global_position.x < marker25.global_position.x and
		def00.global_position.y > marker24.global_position.y and
		def00.global_position.y < marker25.global_position.y
	):
			posZonaZeroDef = Vector2(5, 3)
			
	#ZONA 21
	if (def00.global_position.x > marker23.global_position.x and
		def00.global_position.x < marker28.global_position.x and
		def00.global_position.y > marker23.global_position.y and
		def00.global_position.y < marker28.global_position.y
	):
			posZonaZeroDef = Vector2(5, 4)
			
	#ZONA 22
	if (def00.global_position.x > marker07.global_position.x and
		def00.global_position.x < marker08.global_position.x and
		def00.global_position.y > marker07.global_position.y and
		def00.global_position.y < marker08.global_position.y
	):
			posZonaZeroDef = Vector2(6, 1)
			
	#ZONA 23
	if (def00.global_position.x > marker17.global_position.x and
		def00.global_position.x < marker18.global_position.x and
		def00.global_position.y > marker17.global_position.y and
		def00.global_position.y < marker18.global_position.y
	):
			posZonaZeroDef = Vector2(6, 2)
	
	#ZONA 24
	if (def00.global_position.x > marker16.global_position.x and
		def00.global_position.x < marker26.global_position.x and
		def00.global_position.y > marker16.global_position.y and
		def00.global_position.y < marker26.global_position.y
	):
			posZonaZeroDef = Vector2(6, 3)
			
	#ZONA 25
	if (def00.global_position.x > marker25.global_position.x and
		def00.global_position.x < marker27.global_position.x and
		def00.global_position.y > marker25.global_position.y and
		def00.global_position.y < marker27.global_position.y
	):
			posZonaZeroDef = Vector2(6, 4)
			
	#ZONA 26
	if (def00.global_position.x > marker41.global_position.x and
		def00.global_position.x < marker40.global_position.x and
		def00.global_position.y > marker41.global_position.y and
		def00.global_position.y < marker40.global_position.y
	):
			posZonaZeroDef = Vector2(6, 5)
	
	CalculoVectores()
	
func CalculoVectores():
	difOfZona01 = zona_01.vectorZona - posZonaZeroOf
	difOfZona02 = zona_02.vectorZona - posZonaZeroOf
	difOfZona03 = zona_03.vectorZona - posZonaZeroOf
	difOfZona04 = zona_04.vectorZona - posZonaZeroOf
	difOfZona05 = zona_05.vectorZona - posZonaZeroOf
	difOfZona06 = zona_06.vectorZona - posZonaZeroOf
	difOfZona07 = zona_07.vectorZona - posZonaZeroOf
	difOfZona08 = zona_08.vectorZona - posZonaZeroOf
	difOfZona09 = zona_09.vectorZona - posZonaZeroOf
	difOfZona10 = zona_10.vectorZona - posZonaZeroOf
	difOfZona11 = zona_11.vectorZona - posZonaZeroOf
	difOfZona12 = zona_12.vectorZona - posZonaZeroOf
	difOfZona13 = zona_13.vectorZona - posZonaZeroOf
	difOfZona14 = zona_14.vectorZona - posZonaZeroOf
	difOfZona15 = zona_15.vectorZona - posZonaZeroOf
	difOfZona16 = zona_16.vectorZona - posZonaZeroOf
	difOfZona17 = zona_17.vectorZona - posZonaZeroOf
	difOfZona18 = zona_18.vectorZona - posZonaZeroOf
	difOfZona19 = zona_19.vectorZona - posZonaZeroOf
	difOfZona20 = zona_20.vectorZona - posZonaZeroOf
	difOfZona21 = zona_21.vectorZona - posZonaZeroOf
	difOfZona22 = zona_22.vectorZona - posZonaZeroOf
	difOfZona23 = zona_23.vectorZona - posZonaZeroOf
	difOfZona24 = zona_24.vectorZona - posZonaZeroOf
	difOfZona25 = zona_25.vectorZona - posZonaZeroOf
	difOfZona26 = zona_26.vectorZona - posZonaZeroOf
	
	difDefZona01 = zona_01.vectorZona - posZonaZeroDef
	difDefZona02 = zona_02.vectorZona - posZonaZeroDef
	difDefZona03 = zona_03.vectorZona - posZonaZeroDef
	difDefZona04 = zona_04.vectorZona - posZonaZeroDef
	difDefZona05 = zona_05.vectorZona - posZonaZeroDef
	difDefZona06 = zona_06.vectorZona - posZonaZeroDef
	difDefZona07 = zona_07.vectorZona - posZonaZeroDef
	difDefZona08 = zona_08.vectorZona - posZonaZeroDef
	difDefZona09 = zona_09.vectorZona - posZonaZeroDef
	difDefZona10 = zona_10.vectorZona - posZonaZeroDef
	difDefZona11 = zona_11.vectorZona - posZonaZeroDef
	difDefZona12 = zona_12.vectorZona - posZonaZeroDef
	difDefZona13 = zona_13.vectorZona - posZonaZeroDef
	difDefZona14 = zona_14.vectorZona - posZonaZeroDef
	difDefZona15 = zona_15.vectorZona - posZonaZeroDef
	difDefZona16 = zona_16.vectorZona - posZonaZeroDef
	difDefZona17 = zona_17.vectorZona - posZonaZeroDef
	difDefZona18 = zona_18.vectorZona - posZonaZeroDef
	difDefZona19 = zona_19.vectorZona - posZonaZeroDef
	difDefZona20 = zona_20.vectorZona - posZonaZeroDef
	difDefZona21 = zona_21.vectorZona - posZonaZeroDef
	difDefZona22 = zona_22.vectorZona - posZonaZeroDef
	difDefZona23 = zona_23.vectorZona - posZonaZeroDef
	difDefZona24 = zona_24.vectorZona - posZonaZeroDef
	difDefZona25 = zona_25.vectorZona - posZonaZeroDef
	difDefZona26 = zona_26.vectorZona - posZonaZeroDef
	
func ZonaZeroMode():
	PromZonaZeroOf()
	PromZonaZeroDef()
	
	of01.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona01.x,
		relativoY * difOfZona01.y)
	)
	of02.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona02.x,
		relativoY * difOfZona02.y)
	)
	of03.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona03.x,
		relativoY * difOfZona03.y)
	)
	of04.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona04.x,
		relativoY * difOfZona04.y)
	)
	of05.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona05.x,
		relativoY * difOfZona05.y)
	)
	of06.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona06.x,
		relativoY * difOfZona06.y)
	)
	of07.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona07.x,
		relativoY * difOfZona07.y)
	)
	of08.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona08.x,
		relativoY * difOfZona08.y)
	)
	of09.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona09.x,
		relativoY * difOfZona09.y)
	)
	of10.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona10.x,
		relativoY * difOfZona10.y)
	)
	of11.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona11.x,
		relativoY * difOfZona11.y)
	)
	of12.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona12.x,
		relativoY * difOfZona12.y)
	)
	of13.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona13.x,
		relativoY * difOfZona13.y)
	)
	of14.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona14.x,
		relativoY * difOfZona14.y)
	)
	of15.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona15.x,
		relativoY * difOfZona15.y)
	)
	of16.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona16.x,
		relativoY * difOfZona16.y)
	)
	of17.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona17.x,
		relativoY * difOfZona17.y)
	)
	of18.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona18.x,
		relativoY * difOfZona18.y)
	)
	of19.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona19.x,
		relativoY * difOfZona19.y)
	)
	of20.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona20.x,
		relativoY * difOfZona20.y)
	)
	of21.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona21.x,
		relativoY * difOfZona21.y)
	)
	of22.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona22.x,
		relativoY * difOfZona22.y)
	)
	of23.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona23.x,
		relativoY * difOfZona23.y)
	)
	of24.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona24.x,
		relativoY * difOfZona24.y)
	)
	of25.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona25.x,
		relativoY * difOfZona25.y)
	)
	of26.global_position = (
		of00.global_position + Vector2(relativoX * difOfZona26.x,
		relativoY * difOfZona26.y)
	)
	
	def01.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona01.x,
		relativoY * difDefZona01.y)
	)
	def02.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona02.x,
		relativoY * difDefZona02.y)
	)
	def03.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona03.x,
		relativoY * difDefZona03.y)
	)
	def04.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona04.x,
		relativoY * difDefZona04.y)
	)
	def05.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona05.x,
		relativoY * difDefZona05.y)
	)
	def06.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona06.x,
		relativoY * difDefZona06.y)
	)
	def07.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona07.x,
		relativoY * difDefZona07.y)
	)
	def08.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona08.x,
		relativoY * difDefZona08.y)
	)
	def09.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona09.x,
		relativoY * difDefZona09.y)
	)
	def10.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona10.x,
		relativoY * difDefZona10.y)
	)
	def11.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona11.x,
		relativoY * difDefZona11.y)
	)
	def12.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona12.x,
		relativoY * difDefZona12.y)
	)
	def13.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona13.x,
		relativoY * difDefZona13.y)
	)
	def14.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona14.x,
		relativoY * difDefZona14.y)
	)
	def15.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona15.x,
		relativoY * difDefZona15.y)
	)
	def16.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona16.x,
		relativoY * difDefZona16.y)
	)
	def17.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona17.x,
		relativoY * difDefZona17.y)
	)
	def18.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona18.x,
		relativoY * difDefZona18.y)
	)
	def19.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona19.x,
		relativoY * difDefZona19.y)
	)
	def20.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona20.x,
		relativoY * difDefZona20.y)
	)
	def21.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona21.x,
		relativoY * difDefZona21.y)
	)
	def22.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona22.x,
		relativoY * difDefZona22.y)
	)
	def23.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona23.x,
		relativoY * difDefZona23.y)
	)
	def24.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona24.x,
		relativoY * difDefZona24.y)
	)
	def25.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona25.x,
		relativoY * difDefZona25.y)
	)
	def26.global_position = (
		def00.global_position + Vector2(relativoX * difOfZona26.x,
		relativoY * difDefZona26.y)
	)
