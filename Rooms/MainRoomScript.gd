extends Node

@onready var DropZonestatic_body_2d: Node2D = $Camera2D/PlayerDropZone
@onready var oponent_drop_zone: Node2D = $Camera2D/OponentDropZone

@onready var oponent_deck_1: Node2D = $Camera2D/OponentDeck1

@onready var debug_panel: Node2D = $Camera2D/DEBUGPanel

var debugText: TextEdit = null
var debugTextforhealth = "Player %s  \n  CPU: %s \n"
@onready var camera_2d: Camera2D = $Camera2D
var follow_scene_instance: PackedScene = null
var staticBody: StaticBody2D = null
var timer = 10
var playerHealth = 100
var cpuHealth = 100
var playerAttack = 0
var cpuAttack = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	debugText = debug_panel.get_node("Control/TextEdit");


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var mousepos = camera_2d.get_global_mouse_position()
	if staticBody:
		timer -= 1
		# Update the position of the instance to follow the mouse position
		staticBody.position = mousepos
		if Input.is_action_pressed("selected") && timer <= 0:
			staticBody.position = DropZonestatic_body_2d.global_position
			##follow_scene_instance.queue_free()
			staticBody = null
			timer = 10
			cpuTurn()
			executeTurn()
			
			
			
			

func executeTurn() -> void:
	
	var attackresult = playerAttack - cpuAttack
	if attackresult < 0:
		playerHealth += attackresult
	else:
		cpuHealth -= attackresult
	debugText.text = debugTextforhealth % [playerHealth, cpuHealth] 
	
	
	

func cpuTurn() -> void:
	var card = oponent_deck_1.getRandomCard()
	add_child(card)
	cpuAttack = card.data.value
	
	staticBody = card.get_node("StaticBody2D")
	staticBody.position = oponent_drop_zone.global_position
	staticBody = null


func _on_player_deck_1_button_pressed(node: cardRoot) -> void:
	add_child(node)
	playerAttack = node.data.value
	staticBody = node.get_node("StaticBody2D")


func _on_oponent_drop_zone_button_pressed(node: Variant) -> void:
	pass # Replace with function body.


func _on_oponent_deck_1_button_pressed(node: Variant) -> void:
	pass


func _on_oponent_deck_2_button_pressed(node: Variant) -> void:
	pass # Replace with function body.


func _on_player_deck_2_button_pressed(node: Variant) -> void:
	pass # Replace with function body.


func _on_player_drop_zone_button_pressed(node: Variant) -> void:
	pass # Replace with function body.
