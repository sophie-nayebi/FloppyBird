extends Node2D

@export var pipe_scene : PackedScene 

@export var pipe_height_margin : float = 150.0

func _on_timer_timeout() -> void:
	var pipe_instance : Pipe = pipe_scene.instantiate()
	get_tree().current_scene.add_child(pipe_instance)
	pipe_instance.global_position = global_position
	
	pipe_instance.global_position.y += randf_range(-pipe_height_margin, pipe_height_margin)
