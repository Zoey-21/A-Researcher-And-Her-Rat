extends Node

var levels = ["res://levels/level_1.tscn","res://levels/level_2.tscn","res://levels/level_3.tscn","res://levels/level_4.tscn","res://levels/level_5.tscn","res://levels/level_6.tscn","res://levels/level_7.tscn","res://levels/level_8.tscn","res://levels/level_9.tscn","res://levels/level_10.tscn","res://levels/level_11.tscn","res://levels/level_12.tscn","res://levels/ending.tscn"]

func go_to_level(number):
	var path =  number
	get_tree().change_scene(path)

func next_level():
	var path
	var level = get_tree().current_scene.filename
	for i in levels:
		if i == level:
			path = levels.find(i) + 1
			get_tree().change_scene(levels[path])
			
