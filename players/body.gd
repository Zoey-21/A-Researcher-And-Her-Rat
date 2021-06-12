extends "res://players/player_base.gd"


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _physics_process(delta):
	grounded = is_on_floor()

func _on_coyote_jump_timeout():
	can_jump = false

func run(do_what):
	print("what")

