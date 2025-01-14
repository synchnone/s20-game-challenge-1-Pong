extends Control

func _ready() -> void:
	get_tree().paused = false
	GlobalVariables.p1_score = 0
	GlobalVariables.p2_score = 0

func _on_player_button_down() -> void:
	GlobalVariables.is_ai_on = true
	get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_players_button_down() -> void:
	GlobalVariables.is_ai_on = false
	get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_quit_button_down() -> void:
	get_tree().quit()
