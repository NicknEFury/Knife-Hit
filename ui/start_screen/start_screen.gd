extends Control

@onready var knife_texture := $MarginContainer/VBoxContainer/CenterContainer/TextureRect

func _on_button_pressed():
	Events.location_changed.emit(Events.LOCATIONS.GAME)


func _on_texture_button_pressed():
	Events.location_changed.emit(Events.LOCATIONS.SHOP)

func _ready():
	knife_texture.texture = Globals.KNIFE_TEXTURES[Globals.active_knife_index]
