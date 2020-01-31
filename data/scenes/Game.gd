extends Node


var music:AudioStream = preload("res://data/music/tune.wav")


func _ready() -> void:
	AudioManager.play_music(music)
	$UI/AnimationPlayer.play("New Anim")
