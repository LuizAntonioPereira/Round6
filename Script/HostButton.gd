extends Button

signal set_connect_type(value)

func _ready():
	$IP.text = "IP: " + str(IP.get_local_addresses())
func host():
	Net.initialize_server()
	emit_signal("set_connect_type", true)	
