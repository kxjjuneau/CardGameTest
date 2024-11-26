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
const _1_OFCOINS = preload("res://Assets/MinorArcana/Coins/1ofcoins.png")
const _2_OFCOINS = preload("res://Assets/MinorArcana/Coins/2ofcoins.png")
const _3_OFCOINS = preload("res://Assets/MinorArcana/Coins/3ofcoins.png")
const _4_OF_COINS = preload("res://Assets/MinorArcana/Coins/4OfCoins.png")
const _5_OFCOINS = preload("res://Assets/MinorArcana/Coins/5ofcoins.png")
const _6_OFCOINS = preload("res://Assets/MinorArcana/Coins/6ofcoins.png")
const _7_OFCOINS = preload("res://Assets/MinorArcana/Coins/7ofcoins.png")
const _8_OF_COINS = preload("res://Assets/MinorArcana/Coins/8ofCoins.png")
const _9_OFCOINS = preload("res://Assets/MinorArcana/Coins/9ofcoins.png")
const _10_OFCOINS = preload("res://Assets/MinorArcana/Coins/10ofcoins.png")
const KINGOFCOINS = preload("res://Assets/MinorArcana/Coins/kingofcoins.png")
const KNIGHTOFCOINS = preload("res://Assets/MinorArcana/Coins/knightofcoins.png")
const PAGEOFCOINS = preload("res://Assets/MinorArcana/Coins/pageofcoins.png")
const QUEENOFCOINS = preload("res://Assets/MinorArcana/Coins/queenofcoins.png")
enum CardType {
	COINS_1,
	COINS_2,
	COINS_3,
	COINS_4,
	COINS_5,
	COINS_6,
	COINS_7,
	COINS_8,
	COINS_9,
	COINS_10,
	COINS_PA,
	COINS_KN,
	COINS_QU,
	COINS_KI
	
	
}


var card_dict = {
	CardType.COINS_1 :  Card.new("1 of Coins",     "Clubs", 2,  _1_OFCOINS),
	CardType.COINS_2 :  Card.new("2 of Coins",     "Clubs", 3,  _2_OFCOINS),
	CardType.COINS_3 :  Card.new("3 of Coins",     "Clubs", 4,  _3_OFCOINS),
	CardType.COINS_4 :  Card.new("4 of Coins",     "Clubs", 5,  _4_OF_COINS),
	CardType.COINS_5 :  Card.new("5 of Coins",     "Clubs", 6,  _5_OFCOINS),
	CardType.COINS_6 :  Card.new("6 of Coins",     "Clubs", 7,  _6_OFCOINS),
	CardType.COINS_7 :  Card.new("7 of Coins",     "Clubs", 8,  _7_OFCOINS),
	CardType.COINS_8 :  Card.new("8 of Coins",     "Clubs", 9,  _8_OF_COINS),
	CardType.COINS_9 :  Card.new("9 of Coinss",    "Clubs", 10, _9_OFCOINS),
	CardType.COINS_10 : Card.new("10 of Coinss",    "Clubs", 11, _10_OFCOINS),
	CardType.COINS_PA : Card.new("Page of Coins",   "Clubs", 12, PAGEOFCOINS),
	CardType.COINS_KN : Card.new("Knight of Coins", "Clubs", 13, KNIGHTOFCOINS),
	CardType.COINS_QU : Card.new("Queen of Coins",  "Clubs", 14, QUEENOFCOINS),
	CardType.COINS_KI : Card.new("King of Coins",   "Clubs", 15, KINGOFCOINS)

}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
