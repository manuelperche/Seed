extends Area2D

var move = Vector2.ZERO
var look_vec = Vector2.ZERO
var player = null
var speed = 3

func _ready():
	look_vec = player.position - get_global_position()

func _physics_process(delta):
	move = Vector2.ZERO
	
	move = move.move_toward(look_vec, delta)
	move = move.normalized() * speed
	position += move


func _on_Area2D_body_entered(body):
	pass # Replace with function body.


func _on_attack_body_entered(body):
	if (body == get_parent().get_node("Character")):
		body.die()
	
