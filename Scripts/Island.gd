extends KinematicBody2D


export var speed_x = 1.0;
export var speed_y = 4.0;
export var amplitude_divider_x=20.0;
export var amplitude_divider_y=50.0;

var i = 0.0;
func _ready():
	pass 
	
func _process(delta):
	move_local_x(-sin(i/speed_x)/amplitude_divider_x);
	move_local_y(-cos(i/speed_y)/amplitude_divider_y);
	i+=delta*2;
	pass
