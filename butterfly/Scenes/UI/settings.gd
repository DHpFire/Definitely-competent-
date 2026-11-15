extends Control



func _ready(): #sets up the dropdown buttons and connecting them to the window functon
	var window_mode = $VBoxContainer/Graphic_settings
	var popup = window_mode.get_popup() 
	popup.id_pressed.connect(window) # passes id of button to function window

func _on_button_pressed(): # back button , changes scene back to previous scene
	#SceneSwitcher.switch_scene(Global.prev_scene)
	pass

func window(id):
	if id == 0: #changes display to fullscreen
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, false)
	if id == 1: #changes display to Windowed Boorderless
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, false)
	if id == 2: #changes display to Windowed 
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, true)
