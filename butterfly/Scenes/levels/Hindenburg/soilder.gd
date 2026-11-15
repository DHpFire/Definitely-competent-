extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _ready():
	$PixilFrame0.hide()
	$Label.hide()

func _physics_process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group('child'):
		$PixilFrame0.show()
		$Label.show()
		Global.hin_path2_stage = 2
