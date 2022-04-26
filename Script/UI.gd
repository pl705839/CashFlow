extends Control


onready var Lvl1 = preload("res://Scene/Lvl1.tscn")

var listNumber = [
		preload("res://Asset/numbers/sprite_00.png"),
		preload("res://Asset/numbers/sprite_01.png"),
		preload("res://Asset/numbers/sprite_02.png"),
		preload("res://Asset/numbers/sprite_03.png"),
		preload("res://Asset/numbers/sprite_04.png"),
		preload("res://Asset/numbers/sprite_05.png"),
		preload("res://Asset/numbers/sprite_06.png"),
		preload("res://Asset/numbers/sprite_07.png"),
		preload("res://Asset/numbers/sprite_08.png"),
		preload("res://Asset/numbers/sprite_09.png")
	]

	

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


func _on_Player_money_update(money):
	
	print("money")
	if money != 0.0:
		var val_unit0 = str(abs(money/1))
		val_unit0 = int(val_unit0[len(val_unit0)-1])
		get_node("ui_money/money_unit0").texture = listNumber[val_unit0]
		
		if money > 9:
			var val_unit1 = str(abs(money/10))
			print(val_unit1)
			val_unit1 = int(val_unit1[len(val_unit1)-1])
			get_node("ui_money/money_unit1").texture = listNumber[val_unit1]
		
		if money > 99:
			var val_unit2 = str(abs(money/100))
			val_unit2 = int(val_unit2[len(val_unit2)-1])
			get_node("ui_money/money_unit2").texture = listNumber[val_unit2]
		
		if money > 999:
			var val_unit3 = str(abs(money/1000))
			val_unit3 = int(val_unit3[len(val_unit3)-1])
			get_node("ui_money/money_unit3").texture = listNumber[val_unit3]
			
		if money > 9999:
			var val_unit4 = str(abs(money/10000))
			val_unit4 = int(val_unit4[len(val_unit4)-1])
			get_node("ui_money/money_unit4").texture = listNumber[val_unit4]
		
		if money > 99999:
			var val_unit5 = str(abs(money/100000))
			val_unit5 = int(val_unit5[len(val_unit5)-1])
			get_node("ui_money/money_unit5").texture = listNumber[val_unit5]
		
		if money > 999999:
			var val_unit6 = str(abs(money/1000000))
			val_unit6 = int(val_unit6[len(val_unit6)-1])
			get_node("ui_money/money_unit6").texture = listNumber[val_unit6]
		
	else :
	

		
		get_node("ui_money/money_unit0").texture = preload("res://Asset/numbers/sprite_00.png")
		get_node("ui_money/money_unit1").texture = preload("res://Asset/numbers/sprite_00.png")
		get_node("ui_money/money_unit2").texture = preload("res://Asset/numbers/sprite_00.png")
		get_node("ui_money/money_unit3").texture = preload("res://Asset/numbers/sprite_00.png")
		get_node("ui_money/money_unit4").texture = preload("res://Asset/numbers/sprite_00.png")
		get_node("ui_money/money_unit5").texture = preload("res://Asset/numbers/sprite_00.png")
		get_node("ui_money/money_unit6").texture = preload("res://Asset/numbers/sprite_00.png")

	
	pass # Replace with function body.
