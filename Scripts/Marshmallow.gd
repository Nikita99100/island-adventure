extends KinematicBody2D

const GRAVITY = 10
const ACCELERATION = 10
const MAX_SPEED = 50
export var JUMP_HEIGHT = 130

func _ready():
	$AnimatedSprite.play("Stand")
	pass

var motion = Vector2(0,0)
func _process(delta):
	motion.y+=GRAVITY
	if Input.is_action_pressed("ui_right"):
		motion.x=min(motion.x+ACCELERATION, MAX_SPEED)
		$AnimatedSprite.play("Go")
		$AnimatedSprite.flip_h=false
	elif Input.is_action_pressed("ui_left"):
		motion.x=max(motion.x-ACCELERATION, -MAX_SPEED)
		$AnimatedSprite.play("Go")
		$AnimatedSprite.flip_h=true
	else: 
		motion.x=0
		$AnimatedSprite.play("Stand")
		
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y=-JUMP_HEIGHT
	motion = move_and_slide(motion,Vector2.UP)
	pass
