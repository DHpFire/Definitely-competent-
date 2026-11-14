extends Sprite2D

func _process(delta):
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	position = get_global_mouse_position()
