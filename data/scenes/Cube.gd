extends MeshInstance


func _process(delta: float) -> void:
	rotate_x(2.0 * delta)
	rotate_y(1.3 * delta)
	rotate_z(0.7 * delta)
