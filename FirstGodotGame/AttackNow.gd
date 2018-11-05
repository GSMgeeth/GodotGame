extends AnimatedSprite

func _ready():
	self.playing = false
	self.frames.set_animation_loop("default", false)

func _process(delta):
	if Input.is_key_pressed(KEY_LEFT):
		self.position.x -= 1
	elif Input.is_key_pressed(KEY_RIGHT):
		self.position.x += 1
	elif Input.is_key_pressed(KEY_UP):
		self.position.y -= 1
	elif Input.is_key_pressed(KEY_DOWN):
		self.position.y += 1

func _input(event):
	if event is InputEventMouseButton:
		match event.button_index:
			BUTTON_LEFT:
				self.playing = false
				self.play("default")
