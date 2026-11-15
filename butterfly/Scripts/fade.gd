extends CanvasLayer
@onready var color_rect: ColorRect = $ColorRect
@export var colour = 'black'

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$ColorRect.mouse_filter = Control.MOUSE_FILTER_IGNORE
	color_rect.color = colour
	color_rect.color.a = 0.0


func fade(target_alpha: float,duration: float = 1.00 ):
	var tween = create_tween()
	tween.tween_property(color_rect, 'color:a',target_alpha, duration)
	return tween
