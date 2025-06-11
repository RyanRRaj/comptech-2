extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -450.0

#To make sure that the character does not triple jump
var doubleJumped := false
@onready var sprite_2d: AnimatedSprite2D = $Sprite2D

func jump():
	velocity.y = JUMP_VELOCITY
	
func jump_side(x):
	velocity.y = JUMP_VELOCITY
	velocity.x = x
	
func _physics_process(delta: float) -> void:
	if (velocity.x > 1 || velocity.x < -1):
		sprite_2d.animation = "running"
	else:
		sprite_2d.animation = "default"
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		sprite_2d.animation = "jumping"
	else: 
		doubleJumped = false
	# Handle jump.
	if Input.is_action_just_pressed("jump") and (is_on_floor() or !doubleJumped):
		velocity.y = JUMP_VELOCITY
		if !is_on_floor():
			doubleJumped = true
			sprite_2d.animation = "doubleJumped"
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, 15)

#Animation is played when player moves in the direction it walks in
	move_and_slide()

	var isLeft = velocity.x < 0
	sprite_2d.flip_h = isLeft
	# Allows character to face the direction it is walking in.
	
