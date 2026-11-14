extends CharacterBody2D

@onready var butterfly = get_node("res://Scenes/butter_fly.tscn")

const SPEED = 300.0

func _physics_process(delta: float) -> void:

	var direction := butterfly.get_global_position()
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
