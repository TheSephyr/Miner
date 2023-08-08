extends Node2D

var targetPosition: Vector2 = Vector2(1000, 100)
var speed : int = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = position.move_toward(targetPosition, delta * speed)
	pass
