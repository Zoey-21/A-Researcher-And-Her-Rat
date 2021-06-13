extends Node2D

onready var levels_beaten = get_node("/root/levelsbeaten")
onready var global = get_node("/root/global")

func _ready():
	levels_beaten.save()
	for i in get_child_count():
		if get_child(i).is_in_group("level_button"):
			if levels_beaten.level_data[get_child(i).name] == false:
				get_child(i).disabled = true
				get_child(i).set_modulate(Color(109,109,109,160))


func _on_back_pressed():
	get_tree().change_scene("res://menus/main_menu.tscn")
