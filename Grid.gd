extends Node2D

const tileScene = preload("res://tile.tscn")
const spawn_tile = preload("res://spawn_tile.tscn")
const enemyScene = preload("res://enemy.tscn")

var width: int = 6
var height: int = 5
var cellSize: int = 128
var showDebug: bool = false

var grid: Dictionary = {}
var spawns: Dictionary = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	generateGrid()
	spawnEnemies()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(_delta):
	#pass


func generateGrid() -> void:
	for x in width:
		for y in height:
			var _pos = Vector2(x,y)
			# Create the gridcellSize
			var tile = tileScene.instantiate()
			tile.position = gridToWorld(Vector2(x,y))
			add_child(tile)
			grid[_pos] = tile
			
			if showDebug:
				var rect = ReferenceRect.new()
				rect.size = Vector2(cellSize, cellSize)
				rect.editor_only = false
				tile.add_child(rect)
				var label = Label.new()
				label.text = str(Vector2(x,y))
				tile.add_child(label)
	
	for y in height:
		var _pos = Vector2(width, y)
		var spwanTile = spawn_tile.instantiate()
		spwanTile.position = gridToWorld(Vector2(width, y))
		add_child(spwanTile)
		spawns[_pos] = spwanTile
		

func gridToWorld(_pos: Vector2) -> Vector2:
	return _pos * cellSize

func worldToGrid(_pos: Vector2) -> Vector2:
	return floor(_pos / cellSize)
	
func spawnEnemies() -> Node2D:
	print(spawns.size())
	var rand_value = randi() % spawns.size()
	print(rand_value)
	var enemyStart = gridToWorld(spawns.keys()[rand_value])
	var enemy = enemyScene.instantiate()
	enemy.position = enemyStart
	return enemy
	
