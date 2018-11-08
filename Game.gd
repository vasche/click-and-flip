extends Node2D

var cards = []
var posy = 100
var posx = 100
var card = preload("res://Flip.tscn")
var play_cards = []
var play_card = preload("res://Card.tscn")
var pospx = 100
var pospy = 300

func _ready():
	randomize()
	for i in G.texture_map:
		for j in i:
			print(j)
			var pc = play_card.instance()
			pc.init(Vector2(pospx, pospy), j)
			play_cards.append(pc)
			add_child(pc)
			pospx += 30
	for i in 10:
#		print(i)
		var c = card.instance()
		c.card_name = str(i)
		c.z_index = i
		c.position = Vector2(posx, posy) 
		cards.append(c)
		add_child(c)
		posx += 64
		
	print("ready ", self)


#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
