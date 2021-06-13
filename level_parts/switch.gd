extends Area2D

export var interact_with = ""
export var do_what = ""
var obj
var inside = false

func _on_switch_body_entered(body):
	if body.is_in_group("player"):
		inside = true



func _physics_process(delta):
	if inside:
		if Input.is_action_pressed("interact"):
			$button_2.visible = true
			var nodes = get_node("..").get_children()
			for i in nodes:
				if i.name == interact_with:
					obj = i
					obj.run(do_what)



func _on_switch_body_exited(body):
	inside = false
