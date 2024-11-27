extends Node

@onready var oponent_drop_zone: Node2D = $Camera2D/OponentDropZone

@onready var oponent_deck_1: Node2D = $Camera2D/OponentDeck1
@onready var player_deck_1: Node2D = $Camera2D/PlayerDeck1
@onready var hand: Node2D = $Camera2D/Hand

@onready var debug_panel: Node2D = $Camera2D/DEBUGPanel
const PLAYED_MINOR_EFFECT = preload("res://scenes/effects/played_minor_effect.tscn")
var debugText: TextEdit = null
var debugTextforhealth = "Player %s  \n  CPU: %s \n"
@onready var camera_2d: Camera2D = $Camera2D
var selectedCard: cardRoot = null
var lastPlayed: cardRoot = null

var timer = 10
var playerHealth = 100
var cpuHealth = 100
var playerAttack = 0
var cpuAttack = 0
var checkToDestroy = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	debugText = debug_panel.get_node("Control/TextEdit");


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var mousepos = camera_2d.get_global_mouse_position()
	if selectedCard:
		timer -= 1
		# Update the position of the instance to follow the mouse position
		selectedCard.staticBody.position = mousepos
		if Input.is_action_pressed("selected") && timer <= 0:
			var effect = PLAYED_MINOR_EFFECT.instantiate()
			effect.position = player_deck_1.global_position
			add_child(effect)
			selectedCard.cardAnimation.play("Card_Play_Anim")
			timer = 10
			##cpuTurn()
			executeTurn()
			lastPlayed = selectedCard.duplicate()
			selectedCard = null
			
			
			
			
		

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


func _on_player_deck_1_button_pressed(node: cardRoot) -> void:
	var grid = hand.get_node("Control/GridContainer")
	##grid.Columns += 1
	grid.add_child(node)
	playerAttack = node.data.value
	node.ButtonPressed.connect(_on_card_selected.bind(node))
	var cardStaticBody: StaticBody2D = node.get_node("StaticBody2D")
	##cardStaticBody.position = hand.global_position
	
	

func _on_card_selected(card: cardRoot) -> void:
	card.ButtonPressed.disconnect(_on_card_selected)
	selectedCard = card
	

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
