extends ColorRect

var animate
var type = "turning"
var c = Vector2(0.7885,0.7885) #vec2 c = vec2(0.7885 * cos(a), 0.7885 * sin(a));
var velocity =  Vector2(0.01, 0)
var angle_speed = 0.005

func _ready():
	
	animate = false
	
	self.get_material().set_shader_param("c", Vector2(c.x, 0))
	
	pass

func _input(event):
	
	if event.is_action_pressed("ui_enter") && animate == false:
		
		animate = true
		
	elif event.is_action_pressed("ui_enter") && animate == true:
		
		animate = false
		
	
	pass

func _process(delta):
	
	if animate == true:
		
		if type == "turning":
			
			self.get_material().set_shader_param("c", Vector2(c.x * cos(self.get_material().get_shader_param("a")), c.y * sin(self.get_material().get_shader_param("a"))))
			self.get_material().set_shader_param("a", self.get_material().get_shader_param("a") + angle_speed)
			
		elif type == "straight line":
			
			self.get_material().set_shader_param("c", self.get_material().get_shader_param("c") + velocity)
			
		
		
		
	
	
	pass


func _on_Tex_text_changed(new_text):
	
	c.x = float(new_text)
	
	self.get_material().set_shader_param("c", Vector2(new_text, self.get_material().get_shader_param("c").y))
	
	pass


func _on_Tey_text_changed(new_text):
	
	c.y = float(new_text)
	
	self.get_material().set_shader_param("c", Vector2(self.get_material().get_shader_param("c").x, new_text))
	
	pass


func _on_Turn_button_pressed():
	
	type = "turning"
	
	pass


func _on_Line_button_pressed():
	
	type = "straight line"
	
	pass


func _on_Angle_speed_line_text_changed(new_text):
	
	angle_speed = float(new_text)
	
	pass


func _on_Vex_text_changed(new_text):
	
	velocity.x = float(new_text)
	
	pass


func _on_Vey_text_changed(new_text):
	
	velocity.y = float(new_text)
	
	pass
