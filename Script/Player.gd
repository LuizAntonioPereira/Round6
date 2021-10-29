extends KinematicBody

export var speed = 14

var is_master = false

var velocity = Vector3()

export var fall_acceleration = 75

func initialize(id):
	name = str(id)
	if id == Net.net_id:
		is_master = true

func _physics_process(delta):
	#if is_master:
		var direction = Vector3.ZERO

		if Input.is_action_pressed("ui_right"):
			direction.x += 1
		if Input.is_action_pressed("ui_left"):
			direction.x -= 1
		if Input.is_action_pressed("ui_down"):
			direction.z += 1
		if Input.is_action_pressed("ui_up"):
			direction.z -= 1
	
		if direction != Vector3.ZERO:
			direction = direction.normalized()
		
		velocity.x = direction.x * speed
		velocity.z = direction.z * speed
		velocity.y -= fall_acceleration * delta
		velocity = move_and_slide(velocity, Vector3.UP)
		
		rpc_unreliable("update_position", velocity)

remote func update_position(pos):
	velocity = pos
