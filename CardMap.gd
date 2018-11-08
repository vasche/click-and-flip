extends Node2D

# размер поля 7x2
var grid_size = Vector2(7,2)
var cards = []
var random_cards = []
var empty_boxes
onready var play_card = load("res://Card.tscn")


func _ready():
	randomize()
	empty_boxes = int((grid_size.x * grid_size.y) / 2)
	prepare2d_array()
	seed_cards(play_card)
	pass

func prepare2d_array():
	for i in range(grid_size.x):
		cards.append([])
		for j in range(grid_size.y):
			cards[i].append(null)
	print(cards)

func seed_cards(play_card):
	for i in empty_boxes:
		var x = randi() % G.texture_grid.size()
		var y = randi() % G.texture_grid[x].size()
		print(G.texture_grid[x][y])
		var pc = play_card.instance()
		print("World to map: ", $Grid.world_to_map(Vector2(i,0)))
		pc.init($Grid.world_to_map(Vector2(i,0)), G.texture_grid[x][y]) # картинка для карты
		
		add_child(pc)

func get_random_card():
	return null
	

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
