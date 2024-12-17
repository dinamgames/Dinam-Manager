extends Area2D

var selected : bool = false
@onready var zona_madre = $"../../.."
@onready var zonas = $"../../../.."


func _process(_delta):
	if selected:
		followMouse()


func followMouse():
	global_transform.origin = get_global_mouse_position()

func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			selected = true
			zonas.player_seleccionado = true
			#zona_madre.set_collision_mask_value(1, false)
		else:
			selected = false
			zonas.player_seleccionado = false
			#zona_madre.set_collision_mask_value(1, true)
