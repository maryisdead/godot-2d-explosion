extends Node2D

@onready var explosion_scene: PackedScene = preload("res://explosion.tscn")

var rng: RandomNumberGenerator = RandomNumberGenerator.new()

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("fire"):
		print("fire")
		var explosion: Explosion = explosion_scene.instantiate()
		add_child(explosion)
		explosion.global_position = get_viewport().get_mouse_position()
		explosion.explode()
