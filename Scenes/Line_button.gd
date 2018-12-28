extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	
	for i in range(self.get_children().size()):
		
		if i != 0:
			
			self.get_children()[i].set_visible(false)
			
		
	
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _pressed():
	
	for i in range(self.get_children().size()):
		
		if i != 0:
			
			self.get_children()[i].set_visible(true)
			
		
	
	pass

func _on_Turn_button_pressed():
	
	for i in range(self.get_children().size()):
		
		if i != 0:
			
			self.get_children()[i].set_visible(false)
			
		
	
	pass
