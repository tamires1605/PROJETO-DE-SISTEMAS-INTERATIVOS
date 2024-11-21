extends Node2D

var velocidade = 60

func _process(delta):
	position.y = position.y + velocidade * delta
	if position.y >= 700:
		position.x += 77
		velocidade = -60
	if position.y < -80:
		queue_free()
