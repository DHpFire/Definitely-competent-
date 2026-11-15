extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.hin_path1_stage == 1:
		$Sprite2D.hide()
		$CollisionShape2D.disabled
		Global.hin_path1_stage = 2



 # Replace with function body.
