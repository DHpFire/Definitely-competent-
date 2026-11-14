extends CharacterBody2D

@export var speed: float = 300.0
@export var acceleration: float = 1800.0
@export var friction: float = 1500.0
@export var jump_velocity: float = -420.0

func _ready():
	$Sprite2D.play("flying")


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_vector("Left","Right","Up","Down")
	if direction != Vector2.ZERO:
		velocity = velocity.move_toward(direction * speed, acceleration * delta)
		if direction.x != 0:
			$Sprite2D.flip_h = direction.x < 0
	else:
		velocity = velocity.move_toward(Vector2.ZERO, friction * delta)

	move_and_slide()

	move_and_slide()
