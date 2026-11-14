extends CharacterBody2D

func _process(delta):
	$Scope.global_position = get_global_mouse_position()
