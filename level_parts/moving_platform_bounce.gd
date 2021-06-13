extends KinematicBody2D


var speed = 100
var velocity = Vector2()
export var up_down_left_right = false

func _ready():
	position = global_position
	if up_down_left_right:
		velocity = Vector2(0, speed)
	else:
		velocity = Vector2(speed, 0)

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision and !collision.get_collider().is_in_group("player"):
		velocity = velocity.bounce(collision.normal)


