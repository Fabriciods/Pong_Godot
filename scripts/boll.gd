extends Area2D
class_name Bool

@export var speed: int
@export var velocity: = Vector2.ZERO
var screen_size
func _ready():
	screen_size = get_viewport_rect().size
	velocity.x = randf_range(-1,1)
	velocity.y  = randf_range(-1,1)

func _process(delta):	
	moviment(delta)
	moviment_control()

func moviment(delta: float):
	velocity = velocity.normalized() * speed
	position += velocity * delta 

func moviment_control():	
	position.x = clamp(position.x,0, screen_size.x -20)	
	if(position.x == 0 || position.x == screen_size.x - 20): 
		velocity.x = velocity.x * -1
	if(position.y < 0 || position.y > screen_size.y):
		position.y = 360
	
func _on_area_entered(area):
	if(area.name == "Player"):
		velocity.y = velocity.y * -1
