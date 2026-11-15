extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$butonshowingmech.hide()
	$Label.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.hin_path2_stage == 2:
		$butonshowingmech.show()

func _on_butonshowingmech_interacted() -> void:
	if Global.hin_path2_stage == 2:
		$Label.show()
		Global.hin_path2_stage = 3
		$Timer.start()


func _on_timer_timeout() -> void:
	$butonshowingmech.hide()
	$Label.hide()
