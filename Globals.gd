extends Node
var cards_texture = preload("res://images/playingCards.png") # это StreamTexture class
var texture_grid = []
var texture_map = Vector2(6,10)

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	texture_grid = make_2d_array()

func test():
	print("Hello, Globals!")

func make_2d_array():
	var array2d = []
	var w = 0
	var h = 0
	var ccount = 0
	for i in range(texture_map.x):
		array2d.append([])
		w = 140 * i
		h = 0
		for j in range(texture_map.y):
			array2d[i].append(Vector2(w,h))
			if  Vector2(i,j) == Vector2(5,2):
				break
			h += 190
	return array2d
	
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
