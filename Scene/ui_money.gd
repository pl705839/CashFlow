extends Node2D

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


# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Player_money_update(money):
	
	print(money)
	if money != 0.0:
		var val_unit0 = str(abs(money/1))
		val_unit0 = int(val_unit0[len(val_unit0)-1])
		get_node("money_unit0").texture = listNumber[val_unit0]
		
	else :
	

		
		get_node("money_unit0").texture = preload("res://Asset/numbers/sprite_00.png")
		get_node("money_unit1").texture = preload("res://Asset/numbers/sprite_00.png")
		get_node("money_unit2").texture = preload("res://Asset/numbers/sprite_00.png")
		get_node("money_unit3").texture = preload("res://Asset/numbers/sprite_00.png")
		get_node("money_unit4").texture = preload("res://Asset/numbers/sprite_00.png")
		get_node("money_unit5").texture = preload("res://Asset/numbers/sprite_00.png")
		get_node("money_unit6").texture = preload("res://Asset/numbers/sprite_00.png")

		"""
		unit1.texture = "res://Asset/numbers/sprite_00.png"
		unit2.texture = "res://Asset/numbers/sprite_00.png"
		unit3.texture = "res://Asset/numbers/sprite_00.png"
		unit4.texture = "res://Asset/numbers/sprite_00.png"
		unit5.texture = "res://Asset/numbers/sprite_00.png"
		unit6.texture = "res://Asset/numbers/sprite_00.png"
	"""
	pass
