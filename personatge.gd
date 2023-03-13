extends KinematicBody2D
var velocitat := 400
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN * 700
var salt :=Vector2.UP * 400

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(100, 0)
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	moviment += gravetat * delta
	
	moviment.x = Input.get_axis("ves_esquerra", "ves_dreta")*velocitat
	
	
	if Input.is_action_just_pressed("ves_amunt"):
		moviment += salt
		
		
		
	moviment = move_and_slide(moviment, Vector2.UP)


