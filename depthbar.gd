extends Node

var turtledepth = 0


func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	turtledepth += $"../../Turtle".speed / 200
		#self.text = str(turtledepth) + "m"
	self.position.x = 20
	if self.position.y < 638:
		self.position.y = 648*(turtledepth/2000) + 15
	else:
		$"../../Turtle".speed = 0
		$"../../u win".visible = true

	pass
