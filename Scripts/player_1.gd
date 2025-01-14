extends Node2D



func _process(delta: float) -> void:
	if Input.is_action_pressed("P1_Up"):
		$PadBody1.move_and_collide(Vector2(0, -GlobalVariables.pad_vel) * delta) 
	elif Input.is_action_pressed("P1_Down"):
		$PadBody1.move_and_collide(Vector2(0, GlobalVariables.pad_vel) * delta)
