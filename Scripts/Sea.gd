extends Node2D

export var speed_x = 1.0;
export var speed_y = 4.0;
export var amplitude_divider_x=20.0;
export var amplitude_divider_y=50.0;

var i = 0.0;



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	move_local_x(-sin(i/speed_x)/amplitude_divider_x);
	move_local_y(-cos(i/speed_y)/amplitude_divider_y);
	i+=delta*2;
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
