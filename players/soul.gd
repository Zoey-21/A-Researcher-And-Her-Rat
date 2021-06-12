extends "res://players/player_base.gd"

func _ready():
	JUMP_FORCE = 300

func _physics_process(delta):
	grounded = is_on_floor()
	
	
func _on_coyote_jump_timeout():
	can_jump = false
