extends Node2D

@export var speed: float = 300.0  # Pixels per second

func _process(delta: float):
	# 1. Move the node downward
	position.y += speed * delta
	
	# 2. Get the height of the viewport
	var screen_height = get_viewport_rect().size.y
	
	# 3. Check if it has moved past the bottom
	if position.y > screen_height:
		position.y = 0  # Reset to the top
