extends CharacterBody2D

signal salto

var velocidad_salto=-400.0
var gravedad=ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	if Input.is_action_just_pressed("saltar"):
		reproducir_s_salto()
		animar_salto()
		velocity.y=velocidad_salto
	velocity.y+=gravedad*delta
	move_and_slide()


func reproducir_s_salto():
	$SonidoSalto.play(1.05)

func animar_salto():
	pass