extends CharacterBody2D


func _ready():
	$PixilFrame0.hide()
	$Label.hide()

func _physics_process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group('child'):
		$AudioStreamPlayer2D.play()
		$PixilFrame0.show()
		$Label.show()
		Global.hin_path1_stage = 1
		$Timer.start()


func _on_timer_timeout() -> void:
	$AudioStreamPlayer2D2.play()
	$PixilFrame0.hide()
	$Label.hide()
