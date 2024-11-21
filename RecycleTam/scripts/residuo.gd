extends AnimatedSprite

var velocidade = 60
var classe = ["lixo","metal","organico","papel","plastico","vidro"]
var tipo = ""
var selecionado = false

func _ready():
	randomize()
	tipo = classe[rand_range(0,6)]
	animation = tipo
	frame = rand_range(0,6)
	position = Vector2(148,-24)
	flip_h = true
	if tipo == classe[0]:
		modulate = Color(0.3,0.3,0.3)
	if tipo == classe[1]:
		modulate = Color(1.2,1.2,0.2)
	if tipo == classe[2]:
		modulate = Color(1.3,0.8,0.3)
	if tipo == classe[3]:
		modulate = Color(0.6,0.6,1.6)
	if tipo == classe[4]:
		modulate = Color(1.2,0.6,0.6)
	if tipo == classe[5]:
		modulate = Color(0.6,1.2,0.6)

func _process(delta):
	if position. y > 700:
		rotation_degrees = 180
		velocidade = -60
		position.x = 148+77
	if selecionado == false:
		position.y = position.y + velocidade * delta
	else:
		flip_h = false
		saida(delta)
	if position.y < -40:
		$"Som".stream = load("res://audio/error_008.ogg")
		$"Som".play()
	if position.y < -80:
		$"../".pontos -= 5
		queue_free()

func saida(delta):
	position.x = position.x - velocidade * delta
	if position.x < 0 or position.x > 400:
		$"Som".stream = load("res://audio/confirmation_004.ogg")
		$"Som".play()
	if position.x > 426 or position.x < -42:
		$"../".pontos += 5
		queue_free()

func _on_TouchScreenButton_pressed():
	_on_Button_pressed()

func _on_Button_pressed():
	if tipo == "lixo":
		if position.y < 106:
			selecionado = true
			$"Som".stream = load("res://audio/impactPlank_medium_002.ogg")
			$"Som".play()
	if tipo == "metal":
		if position.y > 106 and position.y < 106*2:
			selecionado = true
			$"Som".stream = load("res://audio/impactMetal_light_003.ogg")
			$"Som".play()
	if tipo == "organico":
		if position.y > 106*2 and position.y < 106*3:
			selecionado = true
			$"Som".stream = load("res://audio/slime_001b.ogg")
			$"Som".play()
	if tipo == "papel":
		if position.y > 106*3 and position.y < 106*4:
			selecionado = true
			$"Som".stream = load("res://audio/cardShove3.ogg")
			$"Som".play()
	if tipo == "plastico":
		if position.y > 106*4 and position.y < 106*5:
			selecionado = true
			$"Som".stream = load("res://audio/chipLay2.ogg")
			$"Som".play()
	if tipo == "vidro":
		if position.y > 106*5 and position.y < 106*6:
			selecionado = true
			$"Som".stream = load("res://audio/impactGlass_medium_000.ogg")
			$"Som".play()
