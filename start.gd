extends Node

@export var label2: Label

func _ready() -> void:
	pass # Replace with function body.
func _process(delta: float) -> void:

	pass


func _on_pressed() -> void:

	pass # Replace with function body.


func _on_button_pressed() -> void:
	if $"../Label2".visible:
		get_tree().change_scene_to_file("res://Turtle.tscn")
	else:
		$"../Label2".visible = true
		#print(label2)
		self.visible = false
	
	

	pass # Replace with function body.
