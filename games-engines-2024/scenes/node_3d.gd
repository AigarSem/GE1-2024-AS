extends Node3D

@export var brick_scene:PackedScene
@export var rows = 10
@export var cols = 10

# Colors for the bricks
var blue_material = preload("res://blue.tres")
var green_material = preload("res://green.tres")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	for row in range(rows):
		for col in range(cols):
			var brick = brick_scene.instantiate()
			#var mesh_instance = brick.get_node("MeshInstance3D")
			#mesh_instance.material_override = blue_material
			var pos = Vector3(col, row, 0)
			brick.position = pos
			add_child(brick)
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
