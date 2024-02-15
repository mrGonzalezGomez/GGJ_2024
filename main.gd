extends Node2D

func _on_button_script_2_pressed():
	get_tree().quit()


func _on_button_script_1_pressed():
	get_tree().change_scene_to_file("res://GGJ_Monkey/first_scene.tscn")
