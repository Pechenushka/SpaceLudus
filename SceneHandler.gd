extends Node


func _ready():
	get_node("MainMenu/M/VB/New Game").connect("pressed", self, "on_new_game_pressed")
	get_node("MainMenu/M/VB/Quit").connect("pressed", self, "on_quit_pressed")
	pass 


func on_new_game_pressed():
	get_node("MainMenu").queue_free()
	var map_sceene = load("res://Scenes/MapSceene/MapSceene.tscn").instance()
	add_child(map_sceene)
	pass

func on_quit_pressed():
	get_tree().quit()
	pass
