# 140x190
extends Area2D

func _ready():

	pass

# параметры для scene не передаются в _init
func init(pos, pos2):
	$Back.hide()
#	print(str(pos))
	position = pos
	$Face.region_rect = Rect2(Vector2(pos2), Vector2(140, 190))
	$Face.region_enabled = true
	$Face.region_filter_clip = true
	$Face.texture = G.cards_texture
	pass
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
