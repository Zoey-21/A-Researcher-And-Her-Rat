extends KinematicBody2D

var SPEED = 100
var x_move_dir = 0
var y_move_dir = 0
export var direction = ""
export var active = true

func _physics_process(delta):
	if active:
		match direction:
			"left":
				x_move_dir = -1
			"right":
				x_move_dir = +1
			"up":
				y_move_dir = -1
			"down":
				y_move_dir = +1
	move_and_slide(Vector2(x_move_dir * SPEED, y_move_dir * SPEED),Vector2(0,-1))
	x_move_dir = 0
	y_move_dir = 0
