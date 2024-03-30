extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$TotalUnitsLabel.text = str(PlayerData.totalNewspaperUnits);
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$rate.text = str(PlayerData.NewspaperRate)
	$TotalMoneyMadeLabel.text = str(PlayerData.NewspaperTotal)
	pass


func _on_back_to_main_btn_button_up():
	get_tree().change_scene_to_file("res://main.tscn");
	pass # Replace with function body.




func _on_units_up_btn_button_up():
	PlayerData.totalNewspaperUnits = PlayerData.totalNewspaperUnits + 1;
	$TotalUnitsLabel.text = str(PlayerData.totalNewspaperUnits);
	pass # Replace with function body.


func _on_value_up_btn_button_up():
	PlayerData.totalNewspaperValue = PlayerData.totalNewspaperValue + 1;
	$TotalValueLabel.text = str(PlayerData.totalNewspaperValue);
	pass # Replace with function body.
