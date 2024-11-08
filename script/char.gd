extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var movement_speed = 500

func movement():
	var x_mov = Input.get_action_strength("right") - Input.get_action_strength("left")
	var y_mov = Input.get_action_strength("down") - Input.get_action_strength("up")
	var mov = Vector2(x_mov,y_mov)
	velocity = mov.normalized()*movement_speed
	move_and_slide()

func _physics_process(delta):
	movement()
