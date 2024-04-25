extends Node

var posOfensivas = {}
var posDefensivas = {}

@onready var of00 = $"../../Zona00/Ofensivas/Control2/ButtonP07"
@onready var of01 = $"../../Zona01/Ofensivas/Control2/ButtonP07"
@onready var of02 = $"../../Zona02/Ofensivas/Control2/ButtonP07"
@onready var of03 = $"../../Zona03/Ofensivas/Control2/ButtonP07"
@onready var of04 = $"../../Zona04/Ofensivas/Control2/ButtonP07"
@onready var of05 = $"../../Zona05/Ofensivas/Control2/ButtonP07"
@onready var of06 = $"../../Zona06/Ofensivas/Control2/ButtonP07"
@onready var of07 = $"../../Zona07/Ofensivas/Control2/ButtonP07"
@onready var of08 = $"../../Zona08/Ofensivas/Control2/ButtonP07"
@onready var of09 = $"../../Zona09/Ofensivas/Control2/ButtonP07"
@onready var of10 = $"../../Zona10/Ofensivas/Control2/ButtonP07"
@onready var of11 = $"../../Zona11/Ofensivas/Control2/ButtonP07"
@onready var of12 = $"../../Zona12/Ofensivas/Control2/ButtonP07"
@onready var of13 = $"../../Zona13/Ofensivas/Control2/ButtonP07"
@onready var of14 = $"../../Zona14/Ofensivas/Control2/ButtonP07"
@onready var of15 = $"../../Zona15/Ofensivas/Control2/ButtonP07"
@onready var of16 = $"../../Zona16/Ofensivas/Control2/ButtonP07"
@onready var of17 = $"../../Zona17/Ofensivas/Control2/ButtonP07"
@onready var of18 = $"../../Zona18/Ofensivas/Control2/ButtonP07"
@onready var of19 = $"../../Zona19/Ofensivas/Control2/ButtonP07"
@onready var of20 = $"../../Zona20/Ofensivas/Control2/ButtonP07"
@onready var of21 = $"../../Zona21/Ofensivas/Control2/ButtonP07"
@onready var of22 = $"../../Zona22/Ofensivas/Control2/ButtonP07"
@onready var of23 = $"../../Zona23/Ofensivas/Control2/ButtonP07"
@onready var of24 = $"../../Zona24/Ofensivas/Control2/ButtonP07"
@onready var of25 = $"../../Zona25/Ofensivas/Control2/ButtonP07"
@onready var of26 = $"../../Zona26/Ofensivas/Control2/ButtonP07"

@onready var def00 = $"../../Zona00/Defensivas/Control2/ButtonP07"
@onready var def01 = $"../../Zona01/Defensivas/Control2/ButtonP07"
@onready var def02 = $"../../Zona02/Defensivas/Control2/ButtonP07"
@onready var def03 = $"../../Zona03/Defensivas/Control2/ButtonP07"
@onready var def04 = $"../../Zona04/Defensivas/Control2/ButtonP07"
@onready var def05 = $"../../Zona05/Defensivas/Control2/ButtonP07"
@onready var def06 = $"../../Zona06/Defensivas/Control2/ButtonP07"
@onready var def07 = $"../../Zona07/Defensivas/Control2/ButtonP07"
@onready var def08 = $"../../Zona08/Defensivas/Control2/ButtonP07"
@onready var def09 = $"../../Zona09/Defensivas/Control2/ButtonP07"
@onready var def10 = $"../../Zona10/Defensivas/Control2/ButtonP07"
@onready var def11 = $"../../Zona11/Defensivas/Control2/ButtonP07"
@onready var def12 = $"../../Zona12/Defensivas/Control2/ButtonP07"
@onready var def13 = $"../../Zona13/Defensivas/Control2/ButtonP07"
@onready var def14 = $"../../Zona14/Defensivas/Control2/ButtonP07"
@onready var def15 = $"../../Zona15/Defensivas/Control2/ButtonP07"
@onready var def16 = $"../../Zona16/Defensivas/Control2/ButtonP07"
@onready var def17 = $"../../Zona17/Defensivas/Control2/ButtonP07"
@onready var def18 = $"../../Zona18/Defensivas/Control2/ButtonP07"
@onready var def19 = $"../../Zona19/Defensivas/Control2/ButtonP07"
@onready var def20 = $"../../Zona20/Defensivas/Control2/ButtonP07"
@onready var def21 = $"../../Zona21/Defensivas/Control2/ButtonP07"
@onready var def22 = $"../../Zona22/Defensivas/Control2/ButtonP07"
@onready var def23 = $"../../Zona23/Defensivas/Control2/ButtonP07"
@onready var def24 = $"../../Zona24/Defensivas/Control2/ButtonP07"
@onready var def25 = $"../../Zona25/Defensivas/Control2/ButtonP07"
@onready var def26 = $"../../Zona26/Defensivas/Control2/ButtonP07"

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
	
	
func ZonaZeroMode():
	of01.global_position = of00.global_position
	of02.global_position = of00.global_position
	of03.global_position = of00.global_position
	of04.global_position = of00.global_position
	of05.global_position = of00.global_position
	of06.global_position = of00.global_position
	of07.global_position = of00.global_position
	of08.global_position = of00.global_position
	of09.global_position = of00.global_position
	of10.global_position = of00.global_position
	of11.global_position = of00.global_position
	of12.global_position = of00.global_position
	of13.global_position = of00.global_position
	of14.global_position = of00.global_position
	of15.global_position = of00.global_position
	of16.global_position = of00.global_position
	of17.global_position = of00.global_position
	of18.global_position = of00.global_position
	of19.global_position = of00.global_position
	of20.global_position = of00.global_position
	of21.global_position = of00.global_position
	of22.global_position = of00.global_position
	of23.global_position = of00.global_position
	of24.global_position = of00.global_position
	of25.global_position = of00.global_position
	of26.global_position = of00.global_position
	
	def01.global_position = def00.global_position
	def02.global_position = def00.global_position
	def03.global_position = def00.global_position
	def04.global_position = def00.global_position
	def05.global_position = def00.global_position
	def06.global_position = def00.global_position
	def07.global_position = def00.global_position
	def08.global_position = def00.global_position
	def09.global_position = def00.global_position
	def10.global_position = def00.global_position
	def11.global_position = def00.global_position
	def12.global_position = def00.global_position
	def13.global_position = def00.global_position
	def14.global_position = def00.global_position
	def15.global_position = def00.global_position
	def16.global_position = def00.global_position
	def17.global_position = def00.global_position
	def18.global_position = def00.global_position
	def19.global_position = def00.global_position
	def20.global_position = def00.global_position
	def21.global_position = def00.global_position
	def22.global_position = def00.global_position
	def23.global_position = def00.global_position
	def24.global_position = def00.global_position
	def25.global_position = def00.global_position
	def26.global_position = def00.global_position
