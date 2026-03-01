extends Node2D

@export var speed: float = 100.0

func _process(delta: float):
	var direction: float = 0.0
	
	if Input.is_key_pressed(KEY_A) or Input.is_key_pressed(KEY_LEFT):
		direction -= 1.0
		
	if Input.is_key_pressed(KEY_D) or Input.is_key_pressed(KEY_RIGHT):
		direction += 1.0
	
	position.x += direction * speed * 4 * delta
	
	if $"../ProgressBar".value <= 0:
		speed = 0
		$"../Label2".visible = true


func _on_jellyfish_area_entered(area: Area2D) -> void:
	modulate = Color.RED
	$"../ProgressBar".value -= 10
	await get_tree().create_timer(1.5).timeout
	modulate = Color.WHITE
	
	
	
	
	


func _on_kaito_area_entered(area: Area2D) -> void:
	modulate = Color.RED
	$"../ProgressBar".value -= 15
	await get_tree().create_timer(1.5).timeout
	modulate = Color.WHITE
