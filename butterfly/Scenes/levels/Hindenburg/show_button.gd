extends Area2D

signal interacted

@onready var prompt_sprite: Sprite2D = $presss_e
var player_in_range: bool = false

func _ready() -> void:
	prompt_sprite.visible = false
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("butterfly") or body.name == "ButterFly":
		player_in_range = true
		prompt_sprite.visible = true

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("butterfly") or body.name == "ButterFly":
		player_in_range = false
		prompt_sprite.visible = false

func _process(_delta: float) -> void:
	if player_in_range and Input.is_action_just_pressed("interact"):
		player_in_range = false
		prompt_sprite.hide()
		$CollisionShape2D.set_deferred("disabled", true)
		Global.hin_stage = 1
		interacted.emit()
