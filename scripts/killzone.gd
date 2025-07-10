extends Area2D

# Creating timer
@onready var timer: Timer = $Timer

# What happens you you die, print message and short timer for delay
func _on_body_entered(body: Node2D) -> void:
	print("You died!")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()

# Restarting the scene
func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
