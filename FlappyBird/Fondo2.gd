extends ParallaxLayer

var escena_tuberias=preload("res://FlappyBird/tuberias.tscn")
var centro
var pos_anterior

func _ready():
	centro=(get_viewport().size.x)/2
	pos_anterior=Vector2(centro,0)
	
	for i in range(3):
		generar_tubos()

func generar_tubos():
	var tuberias=escena_tuberias.instantiate()
	var aleatorio=randf_range(-1,1)
	
	tuberias.position=pos_anterior+Vector2(250,aleatorio*150)
	pos_anterior=tuberias.position


	add_child(tuberias)
	print("tubo,%, x%, y%", [aleatorio], [tuberias.position.x],[tuberias.position.y])

func _on_timer_timeout():
	generar_tubos()


