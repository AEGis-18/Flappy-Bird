extends Label


var puntos

func _ready():
	puntos=0

func sumar_puntos():
	puntos+=1
	self.text=str(puntos)
	print("func_puntos!!!")
