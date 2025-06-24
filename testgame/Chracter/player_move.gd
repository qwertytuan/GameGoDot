extends CharacterBody2D

@export var JUMP_VELOCITY:float = 100
@export var move_speed: float = 100

func _physics_process(_delta):
		# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * _delta
		print("velocity",)

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	var input_direction = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	)
	velocity = input_direction * move_speed
	print("velocity move:",velocity)
	
	move_and_slide()
