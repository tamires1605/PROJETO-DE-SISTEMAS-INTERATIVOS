extends Node2D

var game = load("res://scenes/Recicle.tscn")

func _on_Button_button_up():
	var instance = game.instance()
	get_parent().add_child(instance)
	queue_free()
