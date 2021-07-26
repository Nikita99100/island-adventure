extends Node2D

onready var leftCorner = get_node("../LeftCorner")
onready var rightCorner = get_node("../RightCorner")
onready var gameManager = get_node("/root/World")

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.x+=gameManager.SeaSpeed*delta;
	pass

func _on_area_entered(area):
	if area==rightCorner and gameManager.SeaSpeed>0:
		position=leftCorner.position
	if area == leftCorner and gameManager.SeaSpeed<0:
		position=rightCorner.position
	pass # Replace with function body.
