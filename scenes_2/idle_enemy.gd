extends RigidBody2D

@onready var game_manager = %Game_Manager

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _process(delta):
	pass


func _on_area_2d_body_entered(body): 
	if (body.name == "CharacterBody2D"):
		
		
		
		var y_delta = position.y - body.position.y
		var x_delta = body.position.x - position.x

		if (y_delta > 90):
			print("Destroy Enemy")
			queue_free()
			body.jump()
		else: 
			print("Decrease Player Health")
			game_manager.decrease_health()
			if (x_delta > 0):
				body.jump_side(1000)
			else:
				body.jump_side(-1000)
