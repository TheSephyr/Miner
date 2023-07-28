extends Node2D

@onready var lumbercampDialog = preload("res://BuildingWindow.gd").new()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_static_body_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		lumbercampDialog._open_window()
		print("click")


func _on_static_body_2d_mouse_entered():
	print("mouseEntered")
	pass # Replace with function body.


func _on_window_mouse_entered():
	print("Window")
	pass # Replace with function body.

