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
var facing_right = true
var move_dir = 0 


func _physics_process(_delta):
	grounded = is_on_floor()
	move_dir = 0
	
	
	
	if Input.is_action_just_released("restart"):
		get_tree().reload_current_scene()
	
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
	if !grounded:
		y_velo += GRAVITY
	if can_jump and Input.is_action_just_pressed("jump"):
		if !$jump.playing:
			$jump.play()
		y_velo = -JUMP_FORCE
	if Input.is_action_just_released("jump"):
		if y_velo < min_jump:
			y_velo = min_jump
	
		
	if facing_right and move_dir < 0:
		flip()
	if !facing_right and move_dir > 0:
		flip()
		
	if !move_dir == 0:
		$AnimatedSprite.playing = true
	else:
		$AnimatedSprite.playing = false
		$AnimatedSprite.frame = 0
		

func _on_coyote_jump_timeout():
	can_jump = false

func flip():
	facing_right = !facing_right
	$AnimatedSprite.flip_h = !$AnimatedSprite.flip_h
