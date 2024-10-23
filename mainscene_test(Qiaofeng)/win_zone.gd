extends Area2D
@export var nextLevel: PackedScene


func _on_body_entered(_body: Node2D) -> void:
	print ("you win")
	get_tree().change_scene_to_packed(nextLevel)
