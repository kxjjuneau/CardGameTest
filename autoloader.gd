extends Node
const CARD_CLUBS_02 = preload("res://simple-card-pile-ui-e9f52b0b3485fb83dd8072fe8098e820d5b90236/assets/card_clubs_02.png")
const CARD_CLUBS_03 = preload("res://simple-card-pile-ui-e9f52b0b3485fb83dd8072fe8098e820d5b90236/assets/card_clubs_03.png")
const CARD_CLUBS_04 = preload("res://simple-card-pile-ui-e9f52b0b3485fb83dd8072fe8098e820d5b90236/assets/card_clubs_04.png")
const CARD_CLUBS_05 = preload("res://simple-card-pile-ui-e9f52b0b3485fb83dd8072fe8098e820d5b90236/assets/card_clubs_05.png")
const CARD_CLUBS_07 = preload("res://simple-card-pile-ui-e9f52b0b3485fb83dd8072fe8098e820d5b90236/assets/card_clubs_07.png")
const CARD_CLUBS_06 = preload("res://simple-card-pile-ui-e9f52b0b3485fb83dd8072fe8098e820d5b90236/assets/card_clubs_06.png")
const CARD_CLUBS_08 = preload("res://simple-card-pile-ui-e9f52b0b3485fb83dd8072fe8098e820d5b90236/assets/card_clubs_08.png")
const CARD_CLUBS_09 = preload("res://simple-card-pile-ui-e9f52b0b3485fb83dd8072fe8098e820d5b90236/assets/card_clubs_09.png")
const CARD_CLUBS_10 = preload("res://simple-card-pile-ui-e9f52b0b3485fb83dd8072fe8098e820d5b90236/assets/card_clubs_10.png")
const CARD_CLUBS_A = preload("res://simple-card-pile-ui-e9f52b0b3485fb83dd8072fe8098e820d5b90236/assets/card_clubs_A.png")
const CARD_CLUBS_J = preload("res://simple-card-pile-ui-e9f52b0b3485fb83dd8072fe8098e820d5b90236/assets/card_clubs_J.png")
const CARD_CLUBS_K = preload("res://simple-card-pile-ui-e9f52b0b3485fb83dd8072fe8098e820d5b90236/assets/card_clubs_K.png")
const CARD_CLUBS_Q = preload("res://simple-card-pile-ui-e9f52b0b3485fb83dd8072fe8098e820d5b90236/assets/card_clubs_Q.png")
enum CardType {
	CLUBS_02,
	CLUBS_03,
	CLUBS_04,
	CLUBS_05,
	CLUBS_06,
	CLUBS_07,
	CLUBS_08,
	CLUBS_09,
	CLUBS_10,
	CLUBS_A,
	CLUBS_J,
	CLUBS_K,
	CLUBS_Q
}


var card_dict = {
	CardType.CLUBS_02: Card.new("2 of Clubs", "Clubs", 2, CARD_CLUBS_02),
	CardType.CLUBS_03: Card.new("3 of Clubs", "Clubs", 3, CARD_CLUBS_03),
	CardType.CLUBS_04: Card.new("4 of Clubs", "Clubs", 4, CARD_CLUBS_04),
	CardType.CLUBS_05: Card.new("5 of Clubs", "Clubs", 5, CARD_CLUBS_05),
	CardType.CLUBS_06: Card.new("6 of Clubs", "Clubs", 6, CARD_CLUBS_06),
	CardType.CLUBS_07: Card.new("7 of Clubs", "Clubs", 7, CARD_CLUBS_07),
	CardType.CLUBS_08: Card.new("8 of Clubs", "Clubs", 8, CARD_CLUBS_08),
	CardType.CLUBS_09: Card.new("9 of Clubs", "Clubs", 9, CARD_CLUBS_09),
	CardType.CLUBS_10: Card.new("10 of Clubs", "Clubs", 10, CARD_CLUBS_10),
	CardType.CLUBS_A: Card.new("Ace of Clubs", "Clubs", 11, CARD_CLUBS_A),
	CardType.CLUBS_J: Card.new("Jack of Clubs", "Clubs", 10, CARD_CLUBS_J),
	CardType.CLUBS_Q: Card.new("Queen of Clubs", "Clubs", 10, CARD_CLUBS_Q),
	CardType.CLUBS_K: Card.new("King of Clubs", "Clubs", 10, CARD_CLUBS_K)
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
