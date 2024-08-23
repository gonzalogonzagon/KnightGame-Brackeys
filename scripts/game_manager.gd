extends Node

var score = 0

@onready var score_label = $"../Labels/ScoreLabel"

func add_point():
	score += 1
	score_label.text = "Great job! \nYou collected " + str(score) + " coins!"
