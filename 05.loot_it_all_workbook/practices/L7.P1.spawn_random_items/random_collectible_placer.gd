extends Node2D

var collectible_scenes := [
	preload("coin.tscn"),
	preload("energy_pack.tscn")
	]


func _ready() -> void:
	get_node("Timer").timeout.connect(_on_timer_timeout)


func _on_timer_timeout() -> void:
	var spawn_random_items: PackedScene = collectible_scenes.pick_random()
	var item_instance := spawn_random_items.instantiate()
	add_child(item_instance)
