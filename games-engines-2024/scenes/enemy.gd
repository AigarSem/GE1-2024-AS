extends MeshInstance3D


@onready var tank:Node3D = $"../tank"

var to_player
var forw
var axis
var theta

var q1:Quaternion
var q2:Quaternion

var t = 0

# Called when the node enters the scene tree for the fdirst time.
func _ready() -> void:
	
	to_player = tank.global_position - global_position
	to_player = to_player.normalized()
	forw = global_transform.basis.z
	axis = to_player.cross(forw)
	axis = axis.normalized()
	theta = acos(to_player.dot(forw))
	
	# Destination quaternion
	q2 = Quaternion(-axis, theta)
	
	# Starting quaternion
	q1 = global_basis.get_rotation_quaternion()
	
	t = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var q:Quaternion
	
	if (t < 1.0):
		t = t + delta * 0.1
	else:
		t = 1.0
	
	q = q1.slerp(q2, t)
	global_basis = Basis(q)
