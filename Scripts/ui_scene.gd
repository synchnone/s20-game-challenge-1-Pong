extends Control


func _process(_delta: float) -> void:
	$HBoxContainer/Player1Score.text = str(GlobalVariables.p1_score)
	$HBoxContainer2/Player2Score.text = str(GlobalVariables.p2_score)
