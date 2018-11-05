extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
#	position = Vector2(get_viewport().size.x/2, get_viewport().size.y/2)
#	scale = Vector2(0.3, 0.3)
	set_process(true)
	
func _process(delta):
#	rotation = self.rotation + deg2rad(90 * delta)
	if Input.is_key_pressed(KEY_LEFT):
		self.position.x -= 1
	elif Input.is_key_pressed(KEY_RIGHT):
		self.position.x += 1
	elif Input.is_key_pressed(KEY_UP):
		self.position.y -= 1
	elif Input.is_key_pressed(KEY_DOWN):
		self.position.y += 1
	
	if Input.is_key_pressed(KEY_Q):
		get_tree().quit()

















