extends Node
var cards_texture = preload("res://images/playingCards.png") # это StreamTexture class
var texture_map = []

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	texture_map = make_2d_array()
	print(texture_map)

func test():
	print("Hello, Globals!")

func make_2d_array():
	var array2d = []
	var w = 0
	var h = 0
	for i in 6:
		array2d.append([])
		w = 140 * i
		h = 0
		for j in 10:
			array2d[i].append(Vector2(w,h))
			h += 190
	return array2d
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
