extends Label


var text_to_type = ""
var letter = 0
var max_text

func _ready():
	text_to_type = text
	text = ""
	max_text = text_to_type.length() 


func _on_wait_between_letters_timeout():
	if letter < max_text:
		text = text + text_to_type[letter]
		letter = letter +1
		$AudioStreamPlayer.play()
		
