extends Button


var selected : bool = false
@export var number_player : int
var res_player

@onready var zonas = $"../../../.."
@onready var player_01 = $"../../../../ResPlayers/Player01"
@onready var player_02 = $"../../../../ResPlayers/Player02"
@onready var player_03 = $"../../../../ResPlayers/Player03"
@onready var player_04 = $"../../../../ResPlayers/Player04"
@onready var player_05 = $"../../../../ResPlayers/Player05"
@onready var player_06 = $"../../../../ResPlayers/Player06"
@onready var player_07 = $"../../../../ResPlayers/Player07"
@onready var player_08 = $"../../../../ResPlayers/Player08"
@onready var player_09 = $"../../../../ResPlayers/Player09"
@onready var player_10 = $"../../../../ResPlayers/Player10"
@onready var player_11 = $"../../../../ResPlayers/Player11"


@onready var lu = $"../../../../../../SistemaTacticoAvanzadox4/LU"
@onready var ld = $"../../../../../../SistemaTacticoAvanzadox4/LD"
@onready var ru = $"../../../../../../SistemaTacticoAvanzadox4/RU"
@onready var rd = $"../../../../../../SistemaTacticoAvanzadox4/RD"


func _process(_delta):
	if selected == true:
		followMouse()
	

func followMouse():
	if (get_global_mouse_position().x > lu.global_position.x and 
		get_global_mouse_position().x < rd.global_position.x and
		get_global_mouse_position().y > lu.global_position.y and 
		get_global_mouse_position().y < ld.global_position.y 
	):
		self.global_position = (  
			Vector2(get_global_mouse_position().x - 12,
			get_global_mouse_position().y - 12)
	)

func FilePlayer():
	match number_player:
		1:
			res_player = player_01
		2:
			res_player = player_02
		3:
			res_player = player_03
		4:
			res_player = player_04
		5:
			res_player = player_05
		6:
			res_player = player_06
		7:
			res_player = player_07
		8:
			res_player = player_08
		9:
			res_player = player_09
		10:
			res_player = player_10
		11:
			res_player = player_11


func _on_button_down():
	selected = true


func _on_button_up():
	selected = false
	FilePlayer()
	if zonas.zonaActiva == 0:
		res_player.ZonaZeroMode()
	else:
		res_player.CalcZonaZero()
