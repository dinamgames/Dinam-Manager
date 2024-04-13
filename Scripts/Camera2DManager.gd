extends Camera2D

const ZOOM_INICIAL = Vector2(2,2)
# Called when the node enters the scene tree for the first time.
func _ready():
	zoom = ZOOM_INICIAL
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):

	if Input.is_action_pressed("ZoomIn"):
		zoom.x += 1
		zoom.y += 1
		
	if Input.is_action_pressed("ZoomOut"):
		zoom.x -= 1
		zoom.y -= 1
