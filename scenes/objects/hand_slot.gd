extends Control
class_name handSlot
const HAND_SLOT = preload("res://scenes/objects/HandSlot.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func creat_new_slot(card: cardRoot) -> handSlot :
	var slot: handSlot = HAND_SLOT.instantiate()
	slot.add_child(card)
	return slot
