extends StaticBody2D
class_name Pipe

@export var movement = Vector2.LEFT * 300

func _physics_process(delta: float) -> void:
	global_position += movement * delta
