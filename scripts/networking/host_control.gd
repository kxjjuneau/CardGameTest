extends Control
const SERVER_NODE = preload("res://server_node.tscn")
@onready var host_button: Button = $HostButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_host_button_pressed() -> void:
	var servernode = SERVER_NODE.instantiate()
	add_child(servernode)
	host_button.disabled = true
