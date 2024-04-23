extends Label

@onready var zonas = $"../Avanzadas Botones/Zonas"



func _process(_delta):
	text = "Zona activa = " + str(zonas.zonaActiva)
