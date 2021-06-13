extends Node2D

onready var levels_beaten = get_node("/root/levelsbeaten")

func _ready():
	levels_beaten.loading()

func _on_new_game_pressed():
	get_tree().change_scene("res://levels/start.tscn")


func _on_level_select_pressed():
	get_tree().change_scene("res://menus/level_select.tscn")


func _on_fullscreen_pressed():
	OS.window_fullscreen = !OS.window_fullscreen
