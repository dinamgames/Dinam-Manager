extends ButtonGroup


func IsPressed():
	if get_pressed_button() == null:
		print("Ningún botón presionado")
