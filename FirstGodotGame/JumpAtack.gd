extends AnimatedSprite

func _ready():
	connect("animation_finished", self, "after_animation_finished")

func after_animation_finished():
	if self.animation == "run":
		animation = "jump_attack"
		
	else:
		animation = "run"
