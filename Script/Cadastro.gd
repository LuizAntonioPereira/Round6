extends HBoxContainer

onready var edit = $VBoxContainer2/HBoxContainer/EditNome
var CenaLogin = preload("res://Cena/Login.tscn")

func _ready():
	$HTTPRequest.connect("request_completed", self, "_on_request_completed")

func _on_Button_pressed():
	var query = "username="+edit+"&email=myemail@gmail.com"
	var headers = ["Content-Type: application/x-www-form-urlencoded","Content-Length: " + str(query.length())]
	$HTTPRequest.request("",headers,false,HTTPClient.METHOD_POST,query);
	
func _on_request_completed(result, response_code, headers, body):
	if result ==  HTTPRequest.RESULT_SUCCESS:
		if response_code==200:
			get_tree().change_scene_to(CenaLogin)
		else:
			print("Http Error")
