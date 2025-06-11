extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_1 .tscn")


func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_2 .tscn")
	
func _on_button_4_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
	
func _on_return_home_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn")
