class_name Explosion extends Node2D

@onready var explosion: GPUParticles2D = $Explosion
@onready var debris: GPUParticles2D = $Debris


func explode():
	explosion.emitting = true
	debris.emitting = true
	await get_tree().create_timer(3).timeout
	queue_free()
