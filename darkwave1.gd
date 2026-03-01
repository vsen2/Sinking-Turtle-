extends Sprite2D
@onready var og_x = position.x
@onready var og_y = position.y

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= 2
	position.y -= 3.5
	
	if position.y < -100:
		position.x = og_x
		position.y = og_y
