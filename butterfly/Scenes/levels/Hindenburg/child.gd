extends CharacterBody2D

var butterfly: Node2D = null
const SPEED = 100.0

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	if butterfly:
		var direction = global_position.direction_to(butterfly.global_position)
		$AnimatedSprite2D.play("new_animation")
		if direction:
			velocity.x = direction.x * SPEED 
			if direction.x != 0:
				$AnimatedSprite2D.flip_h = direction.x < 0
		else:
			velocity.x = move_toward(velocity.x, 0 ,SPEED)
		move_and_slide()
	else:
		$AnimatedSprite2D.play("default")

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group('butterfly'):
		butterfly = body
	


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group('butterfly'):
		butterfly = null
