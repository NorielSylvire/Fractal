extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	
	
	
	pass

func _draw():
	
	var color = Color(0, 255, 255)
	var colors = PoolColorArray([color])
	var pos1 = Vector2(300, 300)
	var pos2 = Vector2(300, 300)
	
	draw_line(pos1, pos2, color, 1.0, false)
	
	pass


#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
