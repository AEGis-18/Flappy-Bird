extends Node

func _on_area_2d_body_exited(_body:Node2D):
	get_tree().call_group("Puntos","sumar_puntos")



func _on_tuberia_body_entered(_body):
	get_tree().call_group("Main","terminar_juego")
