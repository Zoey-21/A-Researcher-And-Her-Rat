extends Area2D

onready var levels = get_node("/root/levelsbeaten")
onready var global = get_node("/root/global")
var inside = false
var player_inside
var both_exit = false


func _on_door_body_entered(body):
	if body.is_in_group("player"):
		$Label.text = "Shift or Z to exit"
		$ColorRect.visible = true
		inside = true
		player_inside = body


func _on_door_body_exited(body):
	if body.is_in_group("player"):
		$ColorRect.visible = false
		$Label.text = ""
		inside = false
		player_inside = null

func _physics_process(delta):
	print(both_exit)
	if inside and Input.is_action_just_pressed("interact"):
		if both_exit == false:
			both_exit = true
		else:
			var level = get_node("..").name
			print(level)
			levels.level_data[level] = true
			levels.save()
			global.next_level()
		$AudioStreamPlayer.play()
		player_inside.queue_free()
		


#func _on_AudioStreamPlayer_finished():
#		if both_exit == false:
#			both_exit = true
#		else:
#			var level = get_node("..").name
#			print(level)
#			levels.level_data[level] = true
#			levels.save()
#			global.next_level()
