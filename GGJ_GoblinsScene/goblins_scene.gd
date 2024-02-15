extends Node2D

@onready var cpt = 0
@onready var click = 0
@onready var cmpt = 0
@onready var ansone = ""
@onready var anstwo = ""
@onready var ansthree = ""
@onready var player = $Presentateur1
@onready var timer = $Timer1
@onready var bar = $ProgressBar
var text_position = Vector2(300, 800)

const lines : Array[String] = [
	"Et maintenant,
	nous vous présentons
	les gobelins.",
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
			$FirstQuestion1.visible = false
			Dialogue.start_dialog(text_position, lines)
		cmpt += 1
		
		if cmpt > 0 && timer.time_left == 0 && cpt == 0:
			player.visible = false
			cpt += 1
	if (cpt == 1):
		$FirstQuestion1.visible = true
	elif (cpt == 2):
		$FirstQuestion1.visible = false
		$SecondQuestion1.visible = true
	elif (cpt == 3):
		$SecondQuestion1.visible = false
		$ThirdQuestion1.visible = true
	elif (cpt == 4):
		$ThirdQuestion1.visible = false
		$FourthQuestion1.visible = true
	else:
		$FirstQuestion1.visible = false
		$SecondQuestion1.visible = false
		$ThirdQuestion1.visible = false
		$FourthQuestion1.visible = false

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
	get_tree().change_scene_to_file("res://GGJ_PieScene/pie_scene.tscn")

func _on_answer_fourth_two_pressed():
	get_tree().change_scene_to_file("res://GGJ_PieScene/pie_scene.tscn")

func _on_answer_fourth_three_pressed():
	get_tree().change_scene_to_file("res://GGJ_PieScene/pie_scene.tscn")
