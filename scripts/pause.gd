extends Control

@onready var pause = $"."

var paused = false

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		pausemenu()

func _on_pausa_pressed() -> void:
	if Input.get_mouse_mode() == Input.MOUSE_MODE_VISIBLE:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		self.hide()
		get_tree().paused = false
		paused = false

func _on_salir_pressed() -> void:
	get_tree().quit()
	
func pausemenu():
	if paused:
		# VOLVER AL JUEGO
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		self.hide()
		get_tree().paused = false
	else:
		# ABRIR MENÚ (AQUÍ ESTABA EL ERROR)
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		self.show()
		get_tree().paused = true

	paused = !paused
