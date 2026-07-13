extends VideoStreamPlayer

@export var logo_player: VideoStreamPlayer

var regular_logo: VideoStream = preload("uid://bgkcrj18hmoxy")


func _ready() -> void:
	# This just plays the logo video and goes to the main menu when it ends.
	# If this script is confusing, it might be joever.
	if not finished.is_connected(_on_finished):
		finished.connect(_on_finished)

	logo_player.stream = regular_logo
	logo_player.play()


func _on_finished() -> void:
	SceneManager.go("main_menu")
