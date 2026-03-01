extends Node2D

@export var speed: float = 100

func _process(delta: float):
	# 1. Move the node UP
	position.y -= $"../Turtle".speed * delta
	
	# 2. Get the screen dimensions
	var viewport_size = get_viewport_rect().size
	
	# 3. Check if it hit the top (y < 0)
	if position.y < 0:
		# Reset to the bottom
		position.y = viewport_size.y
		
		# Move to a random X position between 0 and the screen width
		position.x = randf_range(0, viewport_size.x)
