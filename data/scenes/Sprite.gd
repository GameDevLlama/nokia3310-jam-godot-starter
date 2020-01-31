extends Sprite


var sfx:AudioStream = preload("res://data/sfx/sfx01.wav")
var _original_position:Vector2 = Vector2()
var _position:Vector2 = Vector2()
var _velocity:Vector2 = Vector2()


func _ready() -> void:
	_original_position = position


func _process(delta: float) -> void:
	_velocity.y -= 60.0 * delta
	_position += _velocity * delta
	if _position.y < 0:
		_velocity.y -= _position.y
		_position.y = 0.0
	position = _original_position - _position


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		if _position == Vector2.ZERO:
			AudioManager.play_sfx(sfx)
			_velocity.y = 30
