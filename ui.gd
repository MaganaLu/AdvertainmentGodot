extends Control

var example_button_texture = preload("res://gradient.jpg")
var example_button_texture_hov = preload("res://gradient2.png")
var example_button_texture_pressed = preload("res://gradient3.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	var moneyGenerators = [
		{
			"id":"0",
			"type":"newspaper",
			"scene":"res://newspaper.tscn",
		},
		{
			"id":"1",
			"type":"Youtube"
		},
		{
			"id":"2",
			"type":"Facebook"
		},
		{
			"id":"1",
			"type":"Youtube"
		},
		{
			"id":"201",
			"type":"Facebook"
		},
		{
			"id":"77",
			"type":"Youtube"
		},
		{
			"id":"6",
			"type":"Facebook"
		}
	]
	
	_populateBtnList(moneyGenerators);
	
	pass # Replace with function body.

func _populateBtnList(data):
	for item in data:
		
		var button_text = " %s | %s " % [item.id, item.type]
		
		var button_label := RichTextLabel.new();
		button_label.set_text(button_text);
		button_label.set_size(Vector2(850,80))
		button_label.set_position(Vector2(30,20))
		button_label.set_mouse_filter(Control.MOUSE_FILTER_IGNORE)
		
		var button := TextureButton.new();
		button.add_child(button_label);
		button.texture_normal=example_button_texture
		button.texture_hover=example_button_texture_hov
		button.texture_pressed=example_button_texture_pressed
		
		button.pressed.connect(_button_action.bind(item))
		$ScrollContainer/ButtonList.add_child(button);
	pass

func _button_action(item):
	print("%s" % item.id)
	get_tree().change_scene_to_file(item.scene)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
