extends KinematicBody2D



# Movement
export var speed = Vector2(300.0, 1000.0)
export var gravity = 300.0
var velocity = Vector2.ZERO
var direction = Vector2.ZERO
export var right_strenght = 100.0
export var left_strenght = -100.0
export var jump_strenght = -100.0
onready var _animated_sprite = $AnimatedSprite


# Money 
export var money = 0
var unit = 0
var time = 10
signal money_update(money)
var _timer = null




func _ready():
	
	moreMoney(unit)
	pass
	
func _physics_process(delta):
	
	getDirection(delta)
	pass

func setSprite(description):
	
	_animated_sprite.play(description)
	
func getDirection(delta):
	var description = ""
	velocity.y += gravity*delta 
	velocity.x = 0.0
	if !is_on_floor():
		description = "jump"
	else:
		description = "idle"
	if Input.is_action_pressed("left") and Input.is_action_pressed("right"):
		velocity.x = 0.0
		description = "idle"
	else: 
		if Input.is_action_pressed("left"):
			if !is_on_floor():
				description = "jump_left"
			else:
				description = "run_left"
			velocity.x = left_strenght
		if Input.is_action_pressed("right"):
			if !is_on_floor():
				description = "jump"
			else:
				description = "run_right"
			velocity.x = right_strenght
		if is_on_floor() and Input.is_action_just_pressed("jump"):
			velocity.y = jump_strenght
			description = "jump"
		elif is_on_floor(): 
			velocity.y = 0.0
			
	move_and_slide(velocity, Vector2.UP)
	setSprite(description)

func moreMoney(unit):
	
	_timer = Timer.new()
	add_child(_timer)
	_timer.connect("timeout", self, "setMoney")
	_timer.set_wait_time(time)
	_timer.set_one_shot(false) # Make sure it loops
	_timer.start()

	emit_signal("money_update",money)
	
func setMoney():
	 money = money + unit
	

	

		
		
	
	
