extends Node2D

@export var selected: bool = true
@export var speed: int = 200
var targetPosition: Vector2 = Vector2(1000, 100)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = position.move_toward(targetPosition, delta * speed)
	
func _input(event):
	if (selected):
		if (event is InputEventMouseButton and event.is_pressed()):
			targetPosition = event.position
			print(event.position)
			print("print lci")


func _on_static_body_2d_input_event(viewport, event, shape_idx):
	#print("Clicked")
	pass # Replace with function body.


func _on_static_body_2d_mouse_entered():
	#print("entered")
	pass # Replace with function body.
