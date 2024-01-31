extends Control

export var preloaded_texture = preload("res://icon.png");
export var number_of_sprites = 1;
var sprites := [];
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	sprites.resize(number_of_sprites)
	for n in number_of_sprites:
		sprites[n] = Sprite.new()
		sprites[n].texture = preloaded_texture
		sprites[n].position = Vector2(rect_size.x/2.0, rect_size.y/2.0)
		sprites[n].scale = Vector2(0.3,0.3)
		#OPTION 2
		#$Tween.interpolate_property(sprites[n], "rotation_degrees",
		#	sprites[n].rotation_degrees,sprites[n].rotation_degrees + 45,
		#	3, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		add_child(sprites[n])
	pass # Replace with function body.


func _rotate():
	Sprite
	# OPTION 1
	for n in number_of_sprites:
		$Tween.interpolate_property(sprites[n], "rotation_degrees",
			sprites[n].rotation_degrees,sprites[n].rotation_degrees + 45,
			3, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	$Tween.start()
	pass
