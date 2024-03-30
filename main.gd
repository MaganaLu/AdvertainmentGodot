extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_open_spread_sheet_btn_button_down():
	get_tree().change_scene_to_file("res://excel_sheet.tscn")
	pass # Replace with function body.
