extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	position = Vector2(get_viewport().size.x/2, get_viewport().size.y/2)
	scale = Vector2(0.3, 0.3)
	
	set_process(true)
	
func _process(delta):
	rotation = self.rotation + deg2rad(90 * delta)
