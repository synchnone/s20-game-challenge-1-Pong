extends Node2D

const ball_init_vel: int = 400
var ball_vel: int = 400
var y_direction
var ball_direction: Vector2

func _ready() -> void:
	$".".position = Vector2(576, 324)
	y_direction = [-1, 1].pick_random()
	ball_direction = Vector2(y_direction, randf_range(-1.0, 1.0)).normalized() * ball_vel

func _process(delta: float) -> void:
	var colission_check = $ballBody.move_and_collide(ball_direction * delta)
	if colission_check:
		ball_direction = ball_direction.bounce(colission_check.get_normal()) * 1.05
		$AudioStreamPlayer.play()
