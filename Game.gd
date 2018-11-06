extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var cards = []
var posy = 100
var posx = 100
var card = preload("res://Flip.tscn")

func _ready():
	randomize()
	for i in 10:
#		print(i)
		var c = card.instance()
		c.card_name = str(i)
		c.z_index = i
		cards.append(c)
		
	print(cards)
	for c in cards:
		c.position = Vector2(posx, posy)   
		add_child(c)
		posx += 64
	print("ready ", self)
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
