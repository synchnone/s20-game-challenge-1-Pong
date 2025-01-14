extends Node2D

const P2 = preload("res://Scenes/player_2.tscn")
const Ai = preload("res://Scenes/ai.tscn")

const ai_smooth: float = 7.5

func _ready() -> void:
	if GlobalVariables.is_ai_on == false:
		var loaded_P2 = P2.instantiate()
		add_child(loaded_P2)
	elif GlobalVariables.is_ai_on == true:
		var loaded_Ai = Ai.instantiate()
		add_child(loaded_Ai)
	

func _process(delta: float) -> void:
	if GlobalVariables.is_ai_on == true:
		var ball_tree = $ball.get_child(0).global_position.y
		var ai_pos = $Ai.global_position.y
		var ai_tree = $Ai.get_child(0)
		ai_tree.global_position.y = lerp(ai_tree.global_position.y, ball_tree, ai_smooth * delta)

func _on_left_wall_body_entered(body: Node2D) -> void:
	if body.name.contains("ball"):
		call_deferred("reset_scene")
		GlobalVariables.p2_score += 1


func _on_right_wall_body_entered(body: Node2D) -> void:
	if body.name.contains("ball"):
		call_deferred("reset_scene")
		GlobalVariables.p1_score += 1


func reset_scene():
	ScoreSound.score_play()
	get_tree().reload_current_scene()
