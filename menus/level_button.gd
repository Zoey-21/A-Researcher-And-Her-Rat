extends Button


export (int) var level#what level the butten is
export (String) var level_to_load# what sence to load when press

onready var lable = get_node("Label")#writes level on butten
onready var button = get_node(".")


func _ready():
	lable.text = String(level)# makes the lable say what level the butten is
	
	



func _on_level_button_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene(level_to_load)# go to level in level_to_load
