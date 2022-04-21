extends Node2D

signal enter_hall
signal close_action
signal enter_garage
var action = ""

func _process(delta):

	if Input.is_action_pressed("action"):
		if action == "enter_hall":
			print("entré")
		if action == "buy_garage":
			print("acheté")
	pass


func _on_Area2D_body_entered(body):
	emit_signal("enter_hall")
	action = "enter_hall"


func _on_Area2D_body_exited(body):
	emit_signal("close_action")
	action = ""
	


func _on_Garage_body_entered(body):
	emit_signal("enter_garage")
	action = "buy_garage"
	


func _on_Garage_body_exited(body):
	emit_signal("close_action")
	action = ""
	
