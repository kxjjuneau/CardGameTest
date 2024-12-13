extends Node2D
class_name Deck
signal ButtonPressed(node)
var deck = {}
const CARD_ROOT = preload("res://objects/card_root.tscn")
@onready var button: Button = $Control/Button
const DECK_BASE = preload("res://objects/DeckBase.tscn")
var deckType = ""
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func getRandomCard() -> cardRoot:
	# Get card prefab
	var random_key = deck.keys()[randi() % deck.size()]
	var cardClass = CardData.getCardFromDeckWithKey(deckType,random_key)
	var t = CARD_ROOT.instantiate().createNewCard(cardClass)
	
	deck.erase(random_key)
	if deck.size() <= 0:
		button.disabled = true
	
	# Return the card texture associated with the random key
	return t	

func createNewDeck(c: String) -> void: 
	match c:
		"WANDS":
			print("wandsCreating")
			deckType = "WANDS"
			deck = CardData.card_wand_dict
		"COINS":
			deckType = "COINS"
			print("Coinscreating")
			deck = CardData.card_coin_dict
	

func _on_control_button_pressed(node: Variant) -> void:
	var card = getRandomCard()
	emit_signal("ButtonPressed", card)
