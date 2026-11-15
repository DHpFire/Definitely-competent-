extends Node2D
	
func _ready():
	$Crash.hide()

	

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			$bexplosion.play()
			await $Fade.fade(1.0,1.0).finished
			$Scope.hide()
			$Hinden.hide()	
			await $Fade.fade(0.0,0.5).finished
			$Crash.show()
			$Timer.start()
		
			

func _on_timer_timeout() -> void:
	await $Fade.fade(1.0,2.0).finished
	get_tree().change_scene_to_file("res://Scenes/UI/credits.tscn")
