extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


const Speed = 50.0

var direction = 1
var health = 1


func add_gravity(delta):
	if not is_on_floor():
		velocity += get_gravity() * delta 
	
	
func move_enemy():
	velocity.x = Speed * direction

func reverse_direction():
	if is_on_wall():
		direction = -direction
		if direction < 0:
			animated_sprite_2d.flip_h = false
		else:
			animated_sprite_2d.flip_h = true
		
		



func _physics_process(delta: float) -> void:
	add_gravity(delta)
	
	move_and_slide()
	reverse_direction()
	move_enemy()
	
@onready var game_manager = %Game_Manager

func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D"):
		var y_delta = position.y - body.position.y
		var x_delta = body.position.x - position.x
		if (y_delta > 70):
			queue_free()
			body.jump
		
		else:
			game_manager.decrease_health()
			if (x_delta > 0):
				body.jump_side(1000)
			else:
				body.jump_side(-1000)






	
