extends Control

func _ready():
	get_tree().connect("connected_to_server", self, "connected")
	$VBoxContainer/Host.connect("set_connect_type" , $Control, "set_connect_type")
	$VBoxContainer/Join.connect("set_connect_type" , $Control , "set_connect_type")
	$VBoxContainer/Host.connect("pressed",$VBoxContainer/Host ,"host")

func connected():
	#print("CONNECTED")
	if not Net.is_host:
		rpc("begin_game")
		begin_game()

remote func begin_game():
	get_tree().change_scene("res://Cena/Game.tscn")
