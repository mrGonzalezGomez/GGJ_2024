extends Node2D

@onready var cpt = 0
@onready var click = 0
@onready var cmpt = 0
@onready var ansone = ""
@onready var anstwo = ""
@onready var ansthree = ""
@onready var player = $Presentateur
@onready var timer = $Timer
@onready var bar = $ProgressBar
var text_position = Vector2(300, 800)

const lines : Array[String] = [
	"Bonjour et bienvenue à vous.
	Animaux du monde entier
	prenez place pour ce spectacle
	que vous n'etes pas prets d'oublier.",
]

func _ready():
	bar.value = 0


 # Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("mouse_click"):
		if click == 0:
			timer.start()
			click += 1
		if cmpt == 0 && cpt == 0:
			$FirstQuestion.visible = false
			Dialogue.start_dialog(text_position, lines)
		cmpt += 1
		
		if cmpt > 0 && timer.time_left == 0 && cpt == 0:
			player.visible = false
			cpt += 1
	if (cpt == 1):
		$FirstQuestion.visible = true
	elif (cpt == 2):
		$FirstQuestion.visible = false
		$SecondQuestion.visible = true
	elif (cpt == 3):
		$SecondQuestion.visible = false
		$ThirdQuestion.visible = true
	elif (cpt == 4):
		$ThirdQuestion.visible = false
		$FourthQuestion.visible = true
	else:
		$FirstQuestion.visible = false
		$SecondQuestion.visible = false
		$ThirdQuestion.visible = false
		$FourthQuestion.visible = false

func _on_quit_script_pressed():
	get_tree().change_scene_to_file("res://main.tscn")

func _on_answer_one_one_pressed():
	cpt = 2

func _on_answer_one_two_pressed():
	cpt = 2
	
func _on_answer_one_three_pressed():
	cpt = 2

func _on_answer_two_one_pressed():
	cpt = 3

func _on_answer_two_two_pressed():
	cpt = 3

func _on_answer_two_three_pressed():
	cpt = 3

func _on_answer_third_one_pressed():
	cpt = 4

func _on_answer_third_two_pressed():
	cpt = 4

func _on_answer_third_three_pressed():
	cpt = 4

func _on_answer_fourth_one_pressed():
	get_tree().change_scene_to_file("res://GGJ_GoblinsScene/goblins_scene.tscn")

func _on_answer_fourth_two_pressed():
	get_tree().change_scene_to_file("res://GGJ_GoblinsScene/goblins_scene.tscn")

func _on_answer_fourth_three_pressed():
	get_tree().change_scene_to_file("res://GGJ_GoblinsScene/goblins_scene.tscn")
