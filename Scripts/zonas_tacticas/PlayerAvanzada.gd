extends Area2D

@onready var zonas = $"../.."
@onready var ofensivas = $Ofensivas


func _process(_delta):
	ofensivas.PosOfensivas()
	
