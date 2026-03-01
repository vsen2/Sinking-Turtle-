extends Sprite2D

@export var distance: float = 500.0 
@export var speed: float = 0.5

var start_pos = Vector2.ZERO
var time_passed = 0.0

func _ready():
	start_pos = position

func _process(delta):
	# Using delta ensures movement is consistent regardless of frame rate
	time_passed += delta
	
	# Calculate the new X position
	var movement = sin(time_passed * speed) * distance
	position.x = start_pos.x + movement
