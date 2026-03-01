extends Node2D

@export var speed: float = 100


func _process(delta: float):
	position.y -= $"../Turtle".speed * delta * 0.5
	
	position.x += $"../Turtle".speed * delta
	
	var viewport_size = get_viewport_rect().size
	
	if position.y < 0:	
		
		position.y = randf_range(300, 650)
		position.x = 0
		
		
