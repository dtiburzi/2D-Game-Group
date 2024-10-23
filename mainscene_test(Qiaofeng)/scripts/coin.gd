extends Area2D

@onready var game_manager: Node = %"Game manager"
var is_collected = false
func _on_body_entered(_body):
	game_manager.add_point()
	if not is_collected:
		is_collected = true
		$AudioStreamPlayer2D.play()
		hide()
