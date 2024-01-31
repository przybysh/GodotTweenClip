extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	$Node2D/Control._rotate()
	# even if below line is commented then the Node2D2 is being animated
	$Node2D2/Control._rotate()
	pass # Replace with function body.
