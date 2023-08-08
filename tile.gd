extends Node2D

@onready var sprite = $Sprite2D
@onready var buildDialog = $BuildDialog
var hover: bool = false
var currentType: TowerType = TowerType.NOTHING


enum TowerType {NOTHING, TOWER, FARM}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_static_body_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		buildDialog.visible = true
		print("click")


func _on_static_body_2d_mouse_entered():
	print("True")
	hover = true
	sprite.modulate = "ffff00"
	pass # Replace with function body.


func _on_static_body_2d_mouse_exited():
	hover = false
	updateColor()


func _on_build_dialog_close_requested():
	buildDialog.visible = false


func _on_tower_button_down():
	currentType = TowerType.TOWER
	updateColor()



func _on_farm_button_down():
	currentType = TowerType.FARM
	updateColor()


func updateColor():
	match (currentType):
		TowerType.NOTHING:
			sprite.modulate = "ffffff"
		TowerType.FARM:
			sprite.modulate = "77ff00"
		TowerType.TOWER:
			sprite.modulate = "ff0066"
			
