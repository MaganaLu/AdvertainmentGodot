extends Node

var label: String:
	set(value):
		$button/scene/label.text = value

var texture: Texture:
	set(value):
		$button/scene/texturebutton.texture = value
