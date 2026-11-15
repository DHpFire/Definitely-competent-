extends Area2D

@onready var Fade = $Fade

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$butonshowingmech.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.hin_stage == 2:
		$butonshowingmech.show()


func _on_body_entered(body: Node2D) -> void:
	pass


func _on_butonshowingmech_interacted() -> void:
	if Global.hin_stage == 2:
		Global.hin_stage = 3
		await Fade.fade(1.0,2.0).finished
		get_tree().change_scene_to_file("res://Scenes/levels/Hindenburg/sniper_cutscene.tscn")
