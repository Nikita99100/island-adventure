extends RigidBody2D

export var ID = -1
export var texture : Texture

onready var player = get_node("../Marshmallow")

var isCanPickedUp =  false
var isPickedUp = false

func _ready():
	
	pass

func _process(delta):
	if isPickedUp:
		self.global_position=lerp(self.global_position,player.global_position,delta*7)
		if(global_position.distance_to(player.global_position)<3):
			queue_free()
	if Input.is_action_pressed("ui_pickup") and isCanPickedUp:
		isPickedUp = true;
	pass

func _on_body_entered(body):
	if body == player:
		isCanPickedUp = true
	pass

func _on_body_exited(body):
	if body == player:
		isCanPickedUp = false
	pass
