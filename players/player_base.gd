extends KinematicBody2D


const SPEED = 150
var JUMP_FORCE = 400
var y_velo = 0 
var GRAVITY = 25
var can_jump = false
var grounded = is_on_floor()
var min_jump = -100
export var left = ""
export var right = ""


func _physics_process(_delta):
	var move_dir = 0 
	
#	if Input.is_action_just_released("restart"):
#		respawn()
	
	if Input.is_action_pressed(right):
		move_dir += 1

	if Input.is_action_pressed(left):
		move_dir -= 1


	move_and_slide(Vector2(move_dir * SPEED, y_velo),Vector2(0,-1))

#	if is_on_ceiling():
#		y_velo = 0
	
	if grounded:
		$coyote_jump.start()
		can_jump = true
	
	y_velo += GRAVITY
	if can_jump and Input.is_action_just_pressed("jump"):
		y_velo = -JUMP_FORCE
	if Input.is_action_just_released("jump"):
		if y_velo < min_jump:
			y_velo = min_jump

func _on_coyote_jump_timeout():
	can_jump = false
