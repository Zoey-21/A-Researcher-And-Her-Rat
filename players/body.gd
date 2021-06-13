extends "res://players/player_base.gd"

func _on_coyote_jump_timeout():
	can_jump = false

func _physics_process(delta):
	if Input.is_action_just_pressed("exit"):
		get_tree().change_scene("res://menus/main_menu.tscn")
