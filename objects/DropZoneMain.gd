extends Node2D
signal ButtonPressed(node)
var deck = CardData.card_dict.duplicate()
@onready var button: Button = $"../PlayerDeck1/Control/Button"
const CARD_ROOT = preload("res://objects/card_root.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func getRandomCard() -> cardRoot:
	# Get card prefab
	var random_key = deck.keys()[randi() % deck.size()]
	var cardClass = CardData.card_dict[random_key]
	var t = CARD_ROOT.instantiate().createNewCard(cardClass)
	
	deck.erase(random_key)
	if deck.size() <= 0:
		button.disabled = true
	
	# Return the card texture associated with the random key
	return t
	
	
func _on_control_button_pressed(node: Variant) -> void:
	var card = getRandomCard()
	emit_signal("ButtonPressed", card)
