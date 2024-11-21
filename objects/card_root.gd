class_name cardRoot
extends Node2D
const CARD_ROOT = preload("res://objects/card_root.tscn")
var data:Card:
	get:
		return data
	set(value):
		data = value
@onready var sprite_2d: Sprite2D = $StaticBody2D/Sprite2D


func createNewCard(c:Card) -> cardRoot:
	var new_enemy: cardRoot = CARD_ROOT.instantiate()
	new_enemy.data = c
	var s = new_enemy.get_node("StaticBody2D/Sprite2D")
	s.texture = new_enemy.data.texture
	
	return new_enemy
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
