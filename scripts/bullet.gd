extends CharacterBody2D
var pos:Vector2
var rota:float
var dir:float

var speed := 600
var attackDamage := 1
var lifetime := 600



 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	global_position=pos
	global_rotation=rota


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	
	velocity=Vector2(speed,0).rotated(dir)
	move_and_slide()
	if lifetime <= 0:
		self.queue_free() 
	lifetime-=1
