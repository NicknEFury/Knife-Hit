extends Node2D

const EXPLOSION_TIME := 1.0
var is_hitted := false
@onready var particles := [
	$AppleParticles2D,
	$AppleParticles2D2
]
@onready var sprite = $Sprite2D


func _on_area_2d_body_entered(body):
	if not is_hitted:
		is_hitted = true
		Globals.add_apples(1)
		sprite.hide()
		var tween = create_tween()
		for particle in particles:
			particle.emitting = true
			tween.parallel().tween_property(particle, "modulate", Color("ffffff00"), EXPLOSION_TIME)
			
		tween.play()
		await tween.finished
		queue_free()
