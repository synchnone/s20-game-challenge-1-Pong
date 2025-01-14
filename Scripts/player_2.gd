extends Node2D

func _ready() -> void:
	$".".position = Vector2(1112, 324)

func _process(delta: float) -> void:
	if Input.is_action_pressed("P2_Up"):
		$PadBody2.move_and_collide(Vector2(0, -GlobalVariables.pad_vel) * delta) 
	elif Input.is_action_pressed("P2_Down"):
		$PadBody2.move_and_collide(Vector2(0, GlobalVariables.pad_vel) * delta)
