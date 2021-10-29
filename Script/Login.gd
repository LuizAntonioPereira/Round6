extends HBoxContainer

onready var edit = $VBoxContainer2/HBoxContainer/EditNome
var CenaLobby = preload("res://Cena/Lobby.tscn")

func _ready():
	$HTTPRequest.connect("request_completed", self, "_on_HTTPRequest_request_completed")		
	
func _on_Button_pressed():
	#var query = "username="+edit+"&email=myemail@gmail.com"
	#var headers = ["User-Agent:Firefox/1.0"]
	#$HTTPRequest.request(""+query,headers,false);
	get_tree().change_scene_to(CenaLobby)


func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	if result ==  HTTPRequest.RESULT_SUCCESS:
		if response_code==200:
			get_tree().change_scene_to(CenaLobby)
		else:
			print("Http Error")
