extends Node2D

var esteira = load("res://scenes/Esteira.tscn")
var residuo = load("res://scenes/Residuos.tscn")
var tempo = 120
var pontos = 0

func _ready():
	$"Final".visible = false
	$"Tempo".text = str(tempo)
	var esteira_instance = esteira.instance()
	add_child(esteira_instance)
	pass

func _on_Timer_timeout():
	var esteira_instance = esteira.instance()
	var residuo_instance = residuo.instance() 
	add_child(esteira_instance)
	add_child(residuo_instance)

func _on_Timer2_timeout():
	if tempo > 0:
		tempo -= 1
		$"Tempo".text = str(tempo)
		$"Pontos".text = str(pontos)
		$"Final/Pontos".bbcode_text = "[center]"+str(pontos)+"[/center]"
	if tempo == 0:
		$"Final".visible = true
		$"Timer".stop()

func _on_Button_button_up():
	var abertura = load("res://scenes/Recicle.tscn")
	var instance_abertura = abertura.instance()
	get_parent().add_child(instance_abertura)
	queue_free()

func _on_Voltar_button_up():
	var abertura = load("res://scenes/Abertura.tscn")
	var instance_abertura = abertura.instance()
	get_parent().add_child(instance_abertura)
	queue_free()
