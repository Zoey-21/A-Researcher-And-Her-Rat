extends Area2D

export var flip = false
export var interact_with = ""
export var do_what = ""
var obj
var inside = false


func _on_button_body_entered(body):
	if body.is_in_group("player"):
		var nodes = get_node("..").get_children()
		for i in nodes:
			if i.name == interact_with:
				obj = i
		inside = true
		$button_off.visible = false
		$button_on.visible = true

func _on_button_body_exited(body):
	inside = false
	$button_off.visible = true
	$button_on.visible = false


func _physics_process(delta):
	if inside:
		if obj != null:
			obj.run(do_what)


