extends Node2D
@onready var timer = $Timer
func _ready():
	$Crash.hide()
	timer.timeout.connect(_on_timer_timeout)
	

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			$bexplosion.play()
			timer.wait_time = 5.1
			timer.one_shot = true 
			timer.start()
			await $Fade.fade(1.0,1.0).finished
			$Scope.hide()
			$Hinden.hide()	
			await $Fade.fade(0.0,0.5).finished
			$Crash.show()
		
			


func _on_timer_timeout() -> void:
	$"hindenburg_fell".play()
	pass # Replace with function body.
