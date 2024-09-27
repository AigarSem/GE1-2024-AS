extends MeshInstance3D


@export var speed:float = -1
@export var rot_speed = 180.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	#position.z += speed * delta
	#global_position.z += speed * delta
	
	var f = Input.get_axis("move_backward", "move_forward")
	var g = Input.get_axis("move_right", "move_left")
	
	# Can use global_translate for movement based on the world
	# Use translate for movement based on the object direction
	translate(Vector3(g * delta * speed, 0, f * delta * speed))
	#translate(Vector3(g * delta * speed, 0, 0))
	
	
	#rotate_y(deg_to_rad(rot_speed) * delta)
	
	pass
