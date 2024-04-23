extends Button


var selected : bool = false
var mouse_offset : Vector2
@onready var zonas = $"../../../.."
@onready var player_01 = $"../../../../ResPlayers/Player01"




func _ready():
	mouse_offset = Vector2(get_global_mouse_position().x - 12, get_global_mouse_position().y - 12)


func _process(_delta):
	if selected == true:
		followMouse()
	

func followMouse():
	if (get_global_mouse_position().x > 0 and 
		get_global_mouse_position().x < 345 and
		get_global_mouse_position().y > 0 and 
		get_global_mouse_position().y < 96 
	):
		self.global_position = (  
			Vector2(get_global_mouse_position().x - 12,
			get_global_mouse_position().y - 12)
	)


func _on_button_down():
	selected = true


func _on_button_up():
	selected = false
	if zonas.zonaActiva == 0:
		player_01.ZonaZeroMode()
	else:
		player_01.CalcZonaZero()


