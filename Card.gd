# 140x190
extends Area2D

func _ready():
	$Back.hide()
	$Face.region_enabled = true
	$Face.region_filter_clip = true
	$Face.texture = G.cards_texture
	$Face.region_rect = Rect2(0, 0, 140, 190)
	
	pass

# параметры для scene не передаются в _init
func init(pos):
	print(str(pos))
	position = pos
	pass
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
