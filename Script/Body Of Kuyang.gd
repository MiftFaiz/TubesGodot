extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pergerakan = Vector3(0,0,0)
export var speed = 2

func _physics_process(delta):
	pergerakan = Vector3.ZERO
	
	if(Input.is_action_pressed("ui_right")):
		if(rotation_degrees.y >= -80.0 && rotation_degrees.y <= -100.0):
			pergerakan.x += 10
		else:
			pergerakan.z -= 10
		pass
	if(Input.is_action_pressed("ui_left")):
		pergerakan.z += 10
		pass
	if(Input.is_action_pressed("ui_down")):
		pergerakan.x += 10
		pass
	if(Input.is_action_pressed("ui_up")):
		pergerakan.x -= 10
		pass
	if(Input.is_action_just_pressed("r")):
		rotate_y(-1.5708)
		print(rotation_degrees.y)
	if(Input.is_action_just_pressed("l")):
		rotate_y(1.5708)
		pass
	move_and_slide(pergerakan)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
