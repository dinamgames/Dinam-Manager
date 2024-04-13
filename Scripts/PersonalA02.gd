extends Node2D

var equipo = "EquipoA"
var rol
var pos
var encSaqueMedio = false
var objetivoConducir : Vector2


@onready var Arco1 = get_tree().get_nodes_in_group("Arco1")[0]
@onready var players = $"../../.."
@onready var pos_ofensiva = $"../../Posiciones/PlayerA02/PosOfensiva"

func _ready():
	objetivoConducir = Arco1.global_transform.origin
	rol = players.ArrayRoles[7]
	pos = players.Pos()
