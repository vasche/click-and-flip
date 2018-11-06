extends Area2D

var is_open = false
var texture_face = preload("res://images/face.png")
var texture_back = preload("res://images/icon.png")
export (String) var  card_name = ""

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	$Sprite.texture = texture_back
	print("ready ", self)

func _on_Flip_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and event.pressed && event.button_index == BUTTON_LEFT):
		animate_flip()


func animate_flip():
	var tw = $Tween
	tw.interpolate_property(self, "scale",
        Vector2(1, 1), Vector2(0, 1.2), 0.2,
        Tween.TRANS_LINEAR, Tween.EASE_OUT_IN)
	if is_open: 
		tw.interpolate_property(self, "position",
        	position, Vector2(self.position.x, self.position.y + 10), 0.2,
        	Tween.TRANS_LINEAR, Tween.EASE_OUT_IN)
	else:
		tw.interpolate_property(self, "position",
        	position, Vector2(position.x, position.y - 10), 0.2,
        	Tween.TRANS_LINEAR, Tween.EASE_OUT_IN)

	tw.interpolate_callback(self, 0.2, "flip_card") # вызвать метод flip_card через 0,2 сек., меняем картинку
	tw.interpolate_property(self, "scale",
        Vector2(0, 1.2), Vector2(1, 1), 0.1,
        Tween.TRANS_LINEAR, Tween.EASE_OUT_IN, 0.3) # эта анимация запускается с задержкой
	tw.start()

	#есть еще такой вариант через паузу yield(tween, "tween_completed")
#	tw.interpolate_property(self, "scale",
#        Vector2(1, 1), Vector2(0, 1), 0.2,
#        Tween.TRANS_LINEAR, Tween.EASE_OUT_IN)
#	tw.start()
#	yield(tw, "tween_completed") # пауза
#	flip_card()
#	tw.interpolate_property(self, "scale",
#        Vector2(0, 1), Vector2(1, 1), 0.1,
#        Tween.TRANS_LINEAR, Tween.EASE_OUT_IN, 0.3) # эта анимация запускается с задержкой
#	tw.start()

func flip_card():
	if is_open:
		$Sprite.texture = texture_back
		is_open = false
	else:
		$Sprite.texture = texture_face
		is_open = true
		
	print("flip card change image for card %s named=%s with z_index=%s and it's opened=%s" % [self, card_name, z_index, is_open] )

