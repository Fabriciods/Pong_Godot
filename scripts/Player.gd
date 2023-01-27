extends Ator
class_name Player

func _ready():
	screen_size = get_viewport_rect().size
	screen_size.x = screen_size.x - 150
	
func _input(event):
	velocity.x = Input.get_axis("left","right")
	
