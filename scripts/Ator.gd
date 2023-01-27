extends Area2D
class_name Ator
@export var speed: int
var velocity: = Vector2.ZERO
var screen_size

func _process(delta):	
	horizontal_moviment(delta)	

func horizontal_moviment(delta: float):
	velocity = velocity.normalized() * speed
	position += velocity * delta 
	position.x = clamp(position.x,0, screen_size.x)
	

