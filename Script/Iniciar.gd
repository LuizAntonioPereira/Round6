extends HBoxContainer


var CenaLogin = preload("res://Cena/Login.tscn")
var CenaCadastro = preload("res://Cena/Cadastro.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_BtnLogin_pressed():
	get_tree().change_scene_to(CenaLogin)
	pass 


func _on_BtnCadastro_pressed():
	get_tree().change_scene_to(CenaCadastro)
	pass
