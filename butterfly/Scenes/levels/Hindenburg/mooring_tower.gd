extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group('hin') and Global.hin_path1_stage == 2:
		Global.hin_path1_stage = 3
		$AudioStreamPlayer2D.play()
		await $Fade.fade(1.0,2.0).finished
		get_tree().change_scene_to_file('res://Scenes/levels/Hindenburg/ending_1.tscn')
