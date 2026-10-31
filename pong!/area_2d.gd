extends Area2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	init_position = position
	add_to_group("ball")
	pass # Replace with function body.

var  vec:Vector2 = Vector2(5,5)
var init_position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position = position + vec
	# if position.x>500:
		#rset()
	pass
	
func rset():
	if vec.x>0:
		Score.score1 = Score.score1 + 1
	else:
		Score.score2 = Score.score2 + 1
	
	position = init_position
