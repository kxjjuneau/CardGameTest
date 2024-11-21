extends Node
class_name Card
var cardName: String
var suite: String
var value: int
var texture: Texture

func _init(name: String, s:String, v:int, t:Texture) -> void:
	cardName = name
	suite = s
	value = v
	texture = t
