extends CharacterBody2D


const SPEED = 100.0


func _physics_process(delta: float) -> void:
	if Global.hin_stage == 1:
		velocity.x = -1 * SPEED
		move_and_slide()
		
