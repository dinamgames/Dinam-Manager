extends Node2D

var zonaboton
var zonaactiva = 0
var player_seleccionado : bool = false

func HacerVisible():
	match zonaactiva:
		1:
			zonaboton = $Zona01/Ocultable
		2:
			zonaboton = $Zona02/Ocultable
		3:
			zonaboton = $Zona03/Ocultable
		4:
			zonaboton = $Zona04/Ocultable
		5:
			zonaboton = $Zona05/Ocultable
		6:
			zonaboton = $Zona06/Ocultable
		7:
			zonaboton = $Zona07/Ocultable
		8:
			zonaboton = $Zona08/Ocultable
		9:
			zonaboton = $Zona09/Ocultable
		10:
			zonaboton = $Zona10/Ocultable
		11:
			zonaboton = $Zona11/Ocultable
		12:
			zonaboton = $Zona12/Ocultable
		13:
			zonaboton = $Zona13/Ocultable
		14:
			zonaboton = $Zona14/Ocultable
		15:
			zonaboton = $Zona15/Ocultable
		16:
			zonaboton = $Zona16/Ocultable
		17:
			zonaboton = $Zona17/Ocultable
		18:
			zonaboton = $Zona18/Ocultable
		19:
			zonaboton = $Zona19/Ocultable
		20:
			zonaboton = $Zona20/Ocultable
		21:
			zonaboton = $Zona21/Ocultable
		22:
			zonaboton = $Zona22/Ocultable
		23:
			zonaboton = $Zona23/Ocultable
		24:
			zonaboton = $Zona24/Ocultable
		25:
			zonaboton = $Zona25/Ocultable
		26:
			zonaboton = $Zona26/Ocultable


	if zonaboton.visible == true:
		zonaboton.visible = false
		zonaactiva = 0
	else:
		zonaboton.visible = true



func _on_zona_01_input_event(_viewport, event, _shape_idx):
	if player_seleccionado == false:
		if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			zonaactiva = 1
			HacerVisible()


func _on_zona_02_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 2
		HacerVisible()


func _on_zona_03_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 3
		HacerVisible()


func _on_zona_04_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 4
		HacerVisible()


func _on_zona_05_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 5
		HacerVisible()


func _on_zona_06_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 6
		HacerVisible()


func _on_zona_07_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 7
		HacerVisible()


func _on_zona_08_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 8
		HacerVisible()


func _on_zona_09_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 9
		HacerVisible()


func _on_zona_10_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 10
		HacerVisible()


func _on_zona_11_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 11
		HacerVisible()


func _on_zona_12_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 12
		HacerVisible()


func _on_zona_13_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 13
		HacerVisible()


func _on_zona_14_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 14
		HacerVisible()


func _on_zona_15_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 15
		HacerVisible()


func _on_zona_16_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 16
		HacerVisible()


func _on_zona_17_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 17
		HacerVisible()


func _on_zona_18_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 18
		HacerVisible()


func _on_zona_19_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 19
		HacerVisible()


func _on_zona_20_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 20
		HacerVisible()


func _on_zona_21_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 21
		HacerVisible()


func _on_zona_22_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 22
		HacerVisible()


func _on_zona_23_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 23
		HacerVisible()


func _on_zona_24_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 24
		HacerVisible()


func _on_zona_25_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 25
		HacerVisible()


func _on_zona_26_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		zonaactiva = 26
		HacerVisible()
