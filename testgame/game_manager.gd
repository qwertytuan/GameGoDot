extends Node

var score = 0
@onready var rich_text_label: RichTextLabel = $"../Player/RichTextLabel"
func addPoint():
	score += 1
	rich_text_label.text = "Score " + str(score)
