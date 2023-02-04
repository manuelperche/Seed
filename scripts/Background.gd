extends Sprite

const VELOCITY: float = 1.5
var g_texture_height: float = 0


func _ready():
	g_texture_height = texture.get_size().y * scale.y
	
func _process(delta: float) -> void:
	position.y += VELOCITY
	_attempt_reposition()
	
func _attempt_reposition() -> void:
	if position.y > g_texture_height:
		position.y -= 2 * g_texture_height
