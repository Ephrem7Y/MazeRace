extends CharacterBody2D

@export var speed: float = 200.0

@export var move_up: String
@export var move_down: String
@export var move_left: String
@export var move_right: String


func _physics_process(delta):
	var direction := Vector2.ZERO

	if Input.is_action_pressed(move_up):
		direction.y -= 1

	if Input.is_action_pressed(move_down):
		direction.y += 1

	if Input.is_action_pressed(move_left):
		direction.x -= 1

	if Input.is_action_pressed(move_right):
		direction.x += 1

	if direction != Vector2.ZERO:
		direction = direction.normalized()

	velocity = direction * speed

	move_and_slide()
