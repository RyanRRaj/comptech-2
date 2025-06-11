extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.





func _on_play_again_pressed() -> void:
	get_tree().change_scene_to_file("res://all_levels.tscn")


func _on_main_menu_pressed() -> void:    
	get_tree().change_scene_to_file("res://main_menu.tscn")
