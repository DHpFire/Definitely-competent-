extends Area2D
signal interacted
@onready var rope: Area2D = $rope
@onready var prompt_sprite: Sprite2D = $presss_e
var player_in_range: bool = false



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	# Hide the prompt when the game starts
	prompt_sprite.visible = false
	
	# Automatically connect the proximity signals
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		player_in_range = true
		prompt_sprite.visible = true

func _on_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		player_in_range = false
		prompt_sprite.visible = false
		$CollisionShape2D.disabled


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if player_in_range and Input.is_action_just_pressed("interact"):
		interacted.emit()
