extends Camera2D


@onready var Match = $"../.."


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Match.posesionTeam == "EquipoA":
		offset.x = -300
	else:
		offset.x = 300

