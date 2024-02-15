extends Node2D

@onready var cpt = 0
@onready var click = 0
@onready var cmpt = 0
@onready var ansone = ""
@onready var anstwo = ""
@onready var ansthree = ""
@onready var player = $Presentateur
@onready var timer = $Timer2
@onready var bar = $ProgressBar
var text_position = Vector2(300, 800)

const lines : Array[String] = [
	"Voici ces saletés de pies qui viennent désormais !",
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
			$P_FirstQuestion.visible = false
			Dialogue.start_dialog(text_position, lines)
		cmpt += 1
		
		if cmpt > 0 && timer.time_left == 0 && cpt == 0:
			player.visible = false
			cpt += 1
	if (cpt == 1):
		$P_FirstQuestion.visible = true
	elif (cpt == 2):
		$P_FirstQuestion.visible = false
		$P_SecondQuestion.visible = true
	elif (cpt == 3):
		$P_SecondQuestion.visible = false
		$P_ThirdQuestion.visible = true
	elif (cpt == 4):
		$P_ThirdQuestion.visible = false
		$P_FourthQuestion.visible = true
	else:
		$P_FirstQuestion.visible = false
		$P_SecondQuestion.visible = false
		$P_ThirdQuestion.visible = false
		$P_FourthQuestion.visible = false

func _on_quit_script_pressed():
	get_tree().change_scene_to_file("res://main.tscn")

func _on_p_answer_11_pressed():
	cpt = 2

func _on_p_answer_12_pressed():
	cpt = 2

func _on_p_answer_13_pressed():
	cpt = 2

func _on_p_answer_21_pressed():
	cpt = 3

func _on_p_answer_22_pressed():
	cpt = 3

func _on_p_answer_23_pressed():
	cpt = 3

func _on_p_answer_31_pressed():
	cpt = 4
	
func _on_p_answer_32_pressed():
	cpt = 4

func _on_p_answer_33_pressed():
	cpt = 4

func _on_p_answer_41_pressed():
	get_tree().change_scene_to_file("res://GGJ_PandaScene/panda_scene.tscn")

func _on_p_answer_42_pressed():
	get_tree().change_scene_to_file("res://GGJ_PandaScene/panda_scene.tscn")
	
func _on_p_answer_43_pressed():
	get_tree().change_scene_to_file("res://GGJ_PandaScene/panda_scene.tscn")


