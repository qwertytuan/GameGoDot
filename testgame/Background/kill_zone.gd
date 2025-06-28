extends Area2D

@onready var timer: Timer = $Timer
@onready var rich_text_label: RichTextLabel = $"../../Player/RichTextLabel"


func _on_body_entered(body: Node2D) -> void:
	Engine.time_scale= 0.5
	timer.start()
	rich_text_label.text = "You died"
	body.get_node("CollisionShape2D").queue_free()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
