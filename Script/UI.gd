extends Control


onready var Lvl1 = preload("res://Scene/Lvl1.tscn")


func _ready():
	
	pass

func _on_Lvl1_enter_hall():
	get_node("action_enter").visible = true
	pass # Replace with function body.


func _on_Lvl1_enter_garage():
	get_node("action_buy").visible = true
	pass # Replace with function body.


func _on_Lvl1_close_action():
	get_node("action_enter").visible = false
	get_node("action_buy").visible = false
	pass # Replace with function body.
