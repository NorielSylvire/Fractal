extends ColorRect

var animate

func _ready():
	
	animate = false
	
	pass

func _input(event):
	
	if event.is_action_pressed("ui_accept") && animate == false:
		
		animate = true
		
	elif event.is_action_pressed("ui_accept") && animate == true:
		
		animate = false
		
	if event.is_action_pressed("ui_restart"):
		
		self.get_material().set_shader_param("c", Vector2(-2, .2))
		
	
	pass

func _process(delta):
	
	if animate == true:
		
		self.get_material().set_shader_param("c", self.get_material().get_shader_param("c") + Vector2(0.001, -0.0005))
		
	
	
	pass
