extends Node2D

const enemyScene = preload("res://enemy.tscn")
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
	print_debug("timeout...")
	spawnEnemy()
	pass # Replace with function body.
	
func spawnEnemy() -> Node2D:
	var spawnsToEnemy: Array = grid.getSpwansToEndZones()
	print_debug(spawnsToEnemy.size())
	var rand_value = randi() % spawnsToEnemy.size()
	print(rand_value)
	var enemyStartTiletoEndZone: Array = spawnsToEnemy[rand_value]
	print(enemyStartTiletoEndZone)
	var startTileForEnemy: Node2D = enemyStartTiletoEndZone[0]
	print(startTileForEnemy)
	var startPosition: Vector2 = startTileForEnemy.position
	var enemy = enemyScene.instantiate()
	print("Enemy Start")
	enemy.position = startPosition
	enemy.targetPosition = enemyStartTiletoEndZone[1].position
	add_child(enemy)
	return enemy
