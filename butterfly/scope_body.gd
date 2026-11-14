extends CharacterBody2D
func _ready():
	$Crash.hide()

const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _process(delta):
	$scope.global_position = get_global_mouse_position()


func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_RIGHT and event.pressed:
			$Hinden.hide()
			$Crash.show()
