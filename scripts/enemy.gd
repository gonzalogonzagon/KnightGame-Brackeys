extends Node2D

const SPEED = 60

var direction = 1

@onready var ray_cast_right = $RayCastRight
@onready var animated_sprite = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		ray_cast_right.target_position = -ray_cast_right.target_position
		direction = -direction
		animated_sprite.flip_h = !animated_sprite.flip_h
		
	position.x += direction * SPEED * delta
