extends Node2D

@export var speed: float = 400.0

func _process(delta: float):
	var direction: float = 0.0
	
	# 1. Check for Left input (A or Left Arrow)
	if Input.is_key_pressed(KEY_A) or Input.is_key_pressed(KEY_LEFT):
		direction -= 1.0
		
	# 2. Check for Right input (D or Right Arrow)
	if Input.is_key_pressed(KEY_D) or Input.is_key_pressed(KEY_RIGHT):
		direction += 1.0
	
	# 3. Apply the movement
	position.x += direction * speed * delta
