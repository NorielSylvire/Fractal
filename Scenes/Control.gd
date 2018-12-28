extends Control


func _ready():
	
	self.set_visible(false)
	
	pass

func _input(event):
	
	if event.is_action_pressed("ui_interface") && self.is_visible() == false:
		
		self.set_visible(true)
		
	elif event.is_action_pressed("ui_interface") && self.is_visible() == true:
		
		self.set_visible(false)
		
	
	pass


#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


