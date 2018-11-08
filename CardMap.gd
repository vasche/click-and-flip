extends Node2D

# размер поля 7x2
var grid_size = Vector2(7,2)
var cards = []
var empty_boxes


func _ready():
	randomize()
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
