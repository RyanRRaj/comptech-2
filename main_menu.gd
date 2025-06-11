extends Control



func _process(_delta: float) -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://all_levels.tscn")
# Keeps the function minimal while navigating to "level_1" when clicked. 

func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://option_settings.tscn")
# When clicked, this button navigates to "options_settings" tab

func _on_exit_pressed() -> void:
	get_tree().quit()
#This will close the game when clicked.

#When clicked, this button navigates to "game credits" tab
func _on_game_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://game_credits.tscn")
#]
