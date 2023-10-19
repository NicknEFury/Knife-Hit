extends RefCounted
class_name Stage

var knives := 0
var apples := 0
var target_scene_resource = null


func _init(_target_scene = "res://elements/target/target.tscn"):
	target_scene_resource = load(_target_scene)
