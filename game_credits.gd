extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Allows the user to return back to main menu when pressed
func _on_return_home_pressed() -> void:
		get_tree().change_scene_to_file("res://main_menu.tscn")
