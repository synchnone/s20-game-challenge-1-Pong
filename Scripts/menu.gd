extends Control


func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("Pause_Unpause") and get_tree().paused == false:
		get_tree().paused = true
		show()
	elif Input.is_action_just_pressed("Pause_Unpause") and get_tree().paused == true:
		get_tree().paused = false
		hide()


func _on_continue_button_button_down() -> void:
	get_tree().paused = false
	hide()


func _on_reset_button_button_down() -> void:
	call_deferred("reset_scene")
	get_tree().paused = false
	hide()


func _on_quit_button_button_down() -> void:
	get_tree().paused = false
	get_tree().quit()


func reset_scene():
	GlobalVariables.p1_score = 0
	GlobalVariables.p2_score = 0
	get_tree().reload_current_scene()


func _on_main_menu_button_down() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
