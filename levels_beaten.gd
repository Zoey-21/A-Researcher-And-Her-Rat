extends Node


var save_path = "user://save.dat"

var level_data_default = {
	"level_1" : true,
	"level_2" : false,
	"level_3" : false,
	"level_4" : false,
	"level_5" : false,
	"level_6" : false,
	"level_7" : false,
	"level_8" : false,
	"level_9" : false,
	"level_10" : false,
	"level_11" : false,
	"level_12" : false,
	}

var level_data = {
	"level_1" : true,
	"level_2" : false,
	"level_3" : false,
	"level_4" : false,
	"level_5" : false,
	"level_6" : false,
	"level_7" : false,
	"level_8" : false,
	"level_9" : false,
	"level_10" : false,
	"level_11" : false,
	"level_12" : false,
	}

func save():
	
	var file = File.new()#makes a new file for saveing
	var error = file.open(save_path, File.WRITE)#opens file to write to
	if error == OK:# makes sure file loaded corectly
		file.store_var(level_data)#stores info to file
		file.close()#stops wrighting to file
	else:
		print(error)

func loading():
	var file = File.new()#loads file 
	if file.file_exists(save_path):# if file exists
		var error = file.open(save_path, File.READ)#file gets read
		if error == OK:
			var levels = file.get_var()
			file.close()
			level_data = levels
		else:
			print(error)

func delete():
	level_data = level_data_default #sets eveything to false
	var file = File.new()#makes a new file for saveing
	var error = file.open(save_path, File.WRITE)#opens file to write to
	if error == OK:# makes sure file loaded corectly
		file.store_var(level_data)#stores info to file
		file.close()#stops wrighting to file
	else:
		print(error)
