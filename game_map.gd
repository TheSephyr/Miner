extends Node2D

var enemies: Array = []
@onready var grid = $Grid
# Called when the node enters the scene tree for the first time.
func _ready():
	var singleEnemy: Node2D = grid.spawnEnemies()
	enemies.append(singleEnemy)
	add_child(singleEnemy)
	print(enemies)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	pass


func _on_timer_timeout():
	pass # Replace with function body.
