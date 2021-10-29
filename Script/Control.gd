extends Control

const CONNECT_TEXT = ["Waiting for players...", "Connecting to server..."]

func set_connect_type(host):	

	show()
	if host:
		$Connecting/Label.text = CONNECT_TEXT[0]
	else:
		$Connecting/Label.text = CONNECT_TEXT[1]

