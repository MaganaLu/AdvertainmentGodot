extends Node

var elapsedFrames = 0;

var totalNewspaperUnits = 0;
var totalNewspaperValue = 0;
var NewspaperRate = 0;
var NewspaperTotal =0;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	elapsedFrames = elapsedFrames + 1;
	if elapsedFrames == 60:
		NewspaperTotal = NewspaperTotal + NewspaperRate;
		elapsedFrames =0;
	NewspaperRate = totalNewspaperUnits * totalNewspaperValue / 1;
	
	pass
