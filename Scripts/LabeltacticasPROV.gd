extends Label

@onready var zonas = $"../AvanzadasBotones/CanvasLayer/Zonas"



func _process(_delta):
	text = "Zona activa = " + str(zonas.zonaActiva)
