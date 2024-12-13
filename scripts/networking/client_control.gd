extends Control
const CLIENT_NODE = preload("res://client_node.tscn")
@onready var connect_button: Button = $ConnectButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_connect_button_pressed() -> void:
	var client = CLIENT_NODE.instantiate()
	add_child(client)
	
	connect_button.disabled = true
