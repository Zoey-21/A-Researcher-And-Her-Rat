extends Area2D




func _on_door_body_entered(body):
	if body.is_in_group("player"):
		$Label.text = "Shift or Z to exit"


func _on_door_body_exited(body):
	if body.is_in_group("player"):
		$Label.text = ""
