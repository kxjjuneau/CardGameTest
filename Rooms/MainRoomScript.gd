extends Node
##DECKAREA
@onready var oponent_drop_zone: Node2D = $Camera2D/OponentDropZone
@onready var oponent_deck_1: Node2D = $Camera2D/OponentDeck1
@onready var wand_deck: Deck = $Camera2D/PlayerDecks/WandDeck
@onready var coin_deck: Deck = $Camera2D/PlayerDecks/CoinDeck

##HAND AREA
@onready var handRoot: Control = $Camera2D/CoinHand
@onready var handPanelContainer: PanelContainer = $Camera2D/CoinHand/PanelContainer
@onready var handHBoxContainer: HBoxContainer = $Camera2D/CoinHand/PanelContainer/MarginContainer/HBoxContainer
const HAND_SLOT = preload("res://scenes/objects/HandSlot.tscn")

@onready var wand_hand: Control = $Camera2D/WandHand
@onready var WandHand_panelContainer: PanelContainer = $Camera2D/WandHand/PanelContainer
@onready var WandHandh_box_container: HBoxContainer = $Camera2D/WandHand/PanelContainer/MarginContainer/HBoxContainer



const PLAYED_MINOR_EFFECT = preload("res://scenes/effects/played_minor_effect.tscn")
##DEBUG AREA
@onready var debug_panel: Node2D = $Camera2D/DEBUGPanel
var debugText: TextEdit = null
var debugTextforhealth = "Player %s  \n  CPU: %s \n"
##CAMERA GUI AREA
@onready var camera_2d: Camera2D = $Camera2D

##LOCAL UNDEFINED/ CONST
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
	wand_deck.createNewDeck("WANDS")
	coin_deck.createNewDeck("COINS")
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#checks if a card is selected, by checking if the global var selectedCard is null or not
#then if it isnt null it waits for "selected" input while updating the card position to mouse position
# once slected (mousebutton) is triggered card is "played" and animation is triggered
func _process(delta: float) -> void:
	var mousepos = camera_2d.get_global_mouse_position()
	if selectedCard:
		timer -= 1
		# Update the position of the instance to follow the mouse position
		selectedCard.staticBody.global_position = mousepos
		if Input.is_action_pressed("selected") && timer <= 0:
			var effect = PLAYED_MINOR_EFFECT.instantiate()
			effect.position = mousepos
			add_child(effect)
			selectedCard.cardAnimation.play("Card_Play_Anim")
			timer = 10
			##cpuTurn()
			executeTurn()
			lastPlayed = selectedCard.duplicate()
			var c = selectedCard.get_parent()
			handHBoxContainer.remove_child(c)
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

#Player Deck has been pressed
#goto HAND_SLOT script to see creat_new_slot fct
#goto signalroot to see how the card is generated and the deck is kept track of
#sends card to handzone on receiving this signal
func _on_player_deck_1_button_pressed(node: cardRoot) -> void:
	node.ButtonPressed.connect(_on_card_selected.bind(node))
	addToHand(node)
	
	
	
	
	#var cardStaticBody: StaticBody2D = node.get_node("StaticBody2D")
	##cardStaticBody.position = hand.global_position
	
func addToHand(cardToAdd: cardRoot) -> void:
	match cardToAdd.data.suite :
		"COINS" :
			handRoot.position.x -= 132
			handPanelContainer.size.x += 132
			##grid.Columns += 1
			var cardslot = HAND_SLOT.instantiate().creat_new_slot(cardToAdd)
			handHBoxContainer.add_child(cardslot)
		"WANDS" : 
			wand_hand.position.x -= 132
			WandHand_panelContainer.size.x += 132
			##grid.Columns += 1
			var cardslot = HAND_SLOT.instantiate().creat_new_slot(cardToAdd)
			WandHandh_box_container.add_child(cardslot)
		

func removeFromHand(card: cardRoot) -> void:
	selectedCard = card
	handPanelContainer.size.x -= 132
	handRoot.position.x += 132
	card.ButtonPressed.disconnect(_on_card_selected)
	
func _on_player_deck_2_button_pressed(node: Variant) -> void:
	node.ButtonPressed.connect(_on_card_selected.bind(node))
	addToHand(node)
	#var cardStaticBody: StaticBody2D = node.get_node("StaticBody2D")
	##cardStaticBody.position = hand.global_position

	
#each created card in the zone is dynamilyc hooked up to its own signal so that
#when the card in the hand zone is clicked, the signal is disconnected and the hanzone resizes appropriately
#card is then attached to mouse movement in the frame updates
func _on_card_selected(card: cardRoot) -> void:
	removeFromHand(card)
	
	

func _on_oponent_drop_zone_button_pressed(node: Variant) -> void:
	pass # Replace with function body.


func _on_oponent_deck_1_button_pressed(node: Variant) -> void:
	pass


func _on_oponent_deck_2_button_pressed(node: Variant) -> void:
	pass # Replace with function body.




func _on_player_drop_zone_button_pressed(node: Variant) -> void:
	pass # Replace with function body.


func _on_connect_button_pressed() -> void:
	pass # Replace with function body.
