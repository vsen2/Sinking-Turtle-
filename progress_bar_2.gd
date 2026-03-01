extends ProgressBar

func _ready():
	max_value = 100
	value = 100
	
func _process(delta: float):
	value -= 0.1
	if value < 30:
		modulate = Color.DARK_ORANGE
	else:
		modulate = Color.GREEN
		

	
