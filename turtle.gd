extends Node2D

@export var speed: float = 100.0
var screen_size = get_viewport_rect().size

func _process(delta: float):
	
		
	var direction: float = 0.0
	
	# 1. Check for Left input (A or Left Arrow)
	if Input.is_key_pressed(KEY_A) or Input.is_key_pressed(KEY_LEFT):
		direction -= 1.0
		$SeaTurtle.flip_h = true
		
	# 2. Check for Right input (D or Right Arrow)
	if Input.is_key_pressed(KEY_D) or Input.is_key_pressed(KEY_RIGHT):
		direction += 1.0
		$SeaTurtle.flip_h = false
			
	position.x += direction * speed * 4 * delta
	
	position.x = clamp(position.x, -250, 770)
	
	if $"../ProgressBar".value <= 0 or $"../ProgressBar2".value <= 0:
		speed = 0
		$"../lose".visible = true
		
	

func move_turtle():
	await get_tree().create_timer(0.125).timeout
	$Trt1ph.visible = false
	$Trt2ph.visible = true
	await get_tree().create_timer(.083).timeout
	$Trt2ph.visible = false
	$Trt3ph.visible = true
	await get_tree().create_timer(0.083).timeout
	$Trt3ph.visible = false
	$Trt4ph.visible = true
	await get_tree().create_timer(0.083).timeout
	$Trt4ph.visible = false
	$Trt3ph.visible = true
	await get_tree().create_timer(0.083).timeout
	$Trt3ph.visible = false
	$Trt2ph.visible = true
	await get_tree().create_timer(0.083).timeout
	$Trt2ph.visible = false
	$Trt1ph.visible = true
	await get_tree().create_timer(0.083).timeout
	$Trt1ph.visible = false
	$Trt5ph.visible = true
	await get_tree().create_timer(0.083).timeout
	$Trt5ph.visible = false
	$Trt1ph.visible = true
	
func _on_jellyfish_area_entered(area: Area2D) -> void:
	modulate = Color.RED
	print("jellfish")

	$"../ProgressBar".value -= 10
	await get_tree().create_timer(1).timeout
	modulate = Color.WHITE


func _on_kaito_area_entered(area: Area2D) -> void:
	modulate = Color.RED
	print("puff")
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


func _on_bubble_1_area_entered(area: Area2D) -> void:
	$"../ProgressBar2".value += 15
	$"../bubble1".visible = false
