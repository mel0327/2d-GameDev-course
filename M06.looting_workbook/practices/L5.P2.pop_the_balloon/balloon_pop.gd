extends Area2D

@onready var balloon_pop: CanvasGroup= $CanvasGroup

func _input_event(viewport: Node, event: InputEvent, shape_index: int):
	var event_is_mouse_release: bool = (
		event is InputEventMouseButton and
		event.button_index == MOUSE_BUTTON_LEFT and
		event.is_released()
	)

	if event_is_mouse_release:
		release()
		
func release() -> void:
	queue_free()
