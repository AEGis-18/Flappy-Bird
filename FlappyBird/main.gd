extends Node

# func _ready():
# 	empezar_juego()


# func empezar_juego():
# 	get_tree().paused=true
# 	$Empezar.hide()
# 	await _input(Input.is_action_pressed("saltar"))
# 	get_tree().paused=false

func terminar_juego():
	get_tree().paused=true

	for i in range(3):
		$Modular.show()
		await get_tree().create_timer(0.3).timeout
		$Modular.hide()
		await get_tree().create_timer(0.3).timeout

	get_tree().change_scene_to_file("res://FlappyBird/titulo.tscn")
	get_tree().paused=false

func _on_piso_body_entered(_body:Node2D):
	terminar_juego()
