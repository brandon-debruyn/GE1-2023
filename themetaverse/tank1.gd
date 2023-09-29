extends CharacterBody3D

@export var move_speed:float=5
@export var rot_speed:float=1

func _process(delta):	
	var move = Input.get_axis("move_backward", "move_forward")
	print(move)
	translate(Vector3.FORWARD * move * delta * move_speed)
	var turn = Input.get_axis("move_left", "move_right")
	rotate(Vector3.UP, turn * delta * rot_speed)
