extends Area2D
class_name Enemy
@export var speed: int = 400

@export var boll: Area2D
var velocity: = Vector2.ZERO
var screen_size

func _ready():	
	screen_size = get_viewport_rect().size
	screen_size.x = screen_size.x - 150

func _process(delta):		
	horizontal_moviment(delta)	

func horizontal_moviment(delta: float):
	if(boll.position.x >= 240):
		velocity.x = 1
	if(boll.position.x < 240):
		velocity.x = -1	 
	velocity = velocity.normalized() * speed
	position += velocity * delta 
	position.x = clamp(position.x,0, screen_size.x)
