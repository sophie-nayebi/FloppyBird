extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
const GRAVITY = 980

func _physics_process(delta: float) -> void:
	# Add the gravity.
	velocity += Vector2.DOWN * GRAVITY * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY
	
	move_and_slide()


func _on_area_2d_body_entered(_body: Node2D) -> void:
	get_tree().call_deferred("reload_current_scene")
