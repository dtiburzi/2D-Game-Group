extends Node

var score = 0 

@onready var scorelable: Label = $scorelable

func add_point():
	score += 1
	scorelable.text = "You collected " + str(score) + " coins."
