extends Control

const CONNECT_TEXT = ["Waiting for players...", "Connecting to server..."]

func set_connect_type(host):	
	get_node("../VBoxContainer").visible = false
	get_node("../VBoxContainer2").visible = false
	get_node("../VBoxContainer3").visible = false
	#get_parent().get_node("Nome do Node").visible = false
	show()
	if host:
		$Connecting/Label.text = CONNECT_TEXT[0]
	else:
		$Connecting/Label.text = CONNECT_TEXT[1]

