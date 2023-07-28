extends Node2D

@onready var roundCounterLabel = $CanvasLayer/RoundHBoxContainer/RoundCounterLabel

var roundCounter = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	updateRoundCounter()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_next_round_button_button_down():
	updateRoundCounter()

func updateRoundCounter():
	roundCounter = roundCounter + 1
	roundCounterLabel.text = str(roundCounter)
