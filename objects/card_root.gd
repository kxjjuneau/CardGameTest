class_name cardRoot
extends Node2D
signal ButtonPressed(node)
const CARD_ROOT = preload("res://objects/card_root.tscn")

var staticBody: StaticBody2D	:
	get:
		return staticBody
	set(value):
		staticBody = value
		
var cardAnimation: AnimationPlayer :
	get:
		return cardAnimation
	set(value):
		cardAnimation = value
	
var data:Card:
	get:
		return data
	set(value):
		data = value
@onready var sprite_2d: Sprite2D = $StaticBody2D/Sprite2D
var checkToDestroy = false

func createNewCard(c:Card) -> cardRoot:
	var new_card: cardRoot = CARD_ROOT.instantiate()
	new_card.data = c
	var s = new_card.get_node("Control/StaticBody2D/Sprite2D")
	new_card.staticBody = new_card.get_node("Control/StaticBody2D")
	new_card.cardAnimation = new_card.get_node("Control/StaticBody2D/AnimationPlayer")
	s.texture = new_card.data.texture
	
	return new_card
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if cardAnimation:
		if cardAnimation.is_playing() :
			checkToDestroy = true
		
			
			
			

func _on_texture_button_pressed() -> void:
		emit_signal("ButtonPressed")
