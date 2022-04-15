extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed = Vector2(300.0, 1000.0)
export var gravity = 300.0
var velocity = Vector2.ZERO
var direction = Vector2.ZERO
export var right_strenght = 100.0
export var left_strenght = -100.0
export var jump_strenght = -100.0
onready var _animated_sprite = $AnimatedSprite
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
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
	pass

func setSprite(description):
	
	_animated_sprite.play(description)
	
		
		
	
	
