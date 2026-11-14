extends Camera2D
@export var look_ahead_distance: float = 50.0
@export var look_ahead_speed: float = 5.0
var current_look_ahead: Vector2 = Vector2.ZERO
var shake_strength: float = 0.0
var shake_decay: float = 15.0

# Called when the node enters the scene tree for the first time.
func _physics_process(delta: float) -> void:
	# Shift camera slightly ahead of the player's movement direction
	var parent_velocity: Vector2 = get_parent().velocity
	var target_look_ahead := Vector2.ZERO
	if parent_velocity.length() > 10.0:
		target_look_ahead = parent_velocity.normalized() * look_ahead_distance
	current_look_ahead = current_look_ahead.lerp(target_look_ahead, look_ahead_speed * delta)
# Apply decaying screen shake
	var shake_offset := Vector2.ZERO
	if shake_strength > 0.0:
		shake_strength = move_toward(shake_strength, 0.0, shake_decay * delta)
		shake_offset = Vector2(
			randf_range(-shake_strength, shake_strength),
			randf_range(-shake_strength, shake_strength)
		)
	offset = current_look_ahead + shake_offset
# Call $Camera2D.add_shake(8.0) from your player script when taking damage or landing
func add_shake(amount: float = 8.0) -> void:
	shake_strength = amount

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass	
