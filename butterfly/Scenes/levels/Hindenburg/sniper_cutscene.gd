extends Node2D

func _ready():
	$Crash.hide()


func _on_area_2d_mouse_entered(event) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_RIGHT and event.pressed:
			$Hinden.hide()
			$Crash.show()
