extends TileMap


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(delta):
	var pos = position
	pos.y += 50 * delta
	position = pos
	if(randi() % 100 == 0):
		var pos2 = Vector2(randi(), randi())
		set_cellv(pos2, pos2.y)



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
