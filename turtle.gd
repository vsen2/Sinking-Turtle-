extends Node2D

@export var speed: float = 100.0

func _process(delta: float):
	var direction: float = 0.0
	
	# 1. Check for Left input (A or Left Arrow)
	if Input.is_key_pressed(KEY_A) or Input.is_key_pressed(KEY_LEFT):
		direction -= 1.0
		
	# 2. Check for Right input (D or Right Arrow)
	if Input.is_key_pressed(KEY_D) or Input.is_key_pressed(KEY_RIGHT):
		direction += 1.0
	
	# 3. Apply the movement
	position.x += direction * speed * 4 * delta
	
	if $"../ProgressBar".value <= 0 or $"../ProgressBar2".value <= 0:
		speed = 0
		$"../Label2".visible = true


func _on_jellyfish_area_entered(area: Area2D) -> void:
	modulate = Color.RED
	$"../ProgressBar".value -= 10
	await get_tree().create_timer(1).timeout
	modulate = Color.WHITE


func _on_kaito_area_entered(area: Area2D) -> void:
	modulate = Color.RED
	$"../ProgressBar".value -= 15
	await get_tree().create_timer(1.5).timeout
	modulate = Color.WHITE
	
func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_SPACE:
			
			#turtle shell mode
			if $SeaTurtle.visible:
				$SeaTurtle.visible = false
				$Turtle2.visible = true
				speed = 300
			else:
				$SeaTurtle.visible = true
				$Turtle2.visible = false
				speed = 100
