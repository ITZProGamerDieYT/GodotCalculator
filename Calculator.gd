extends Control

var result = 0
var action = ""
var can_type = false
var dot = false
var can_click = true
onready var TextLabel = $Control/RichTextLabel
var expression = Expression.new()

func _ready():
	pass

func _process(_delta):
	if $Control/RichTextLabel.text == "Null":
		can_click = false
		$Control/RichTextLabel2.text = "Cannot Devide on 0"
		pass

func _on_Delete_pressed():
	TextLabel.text = ""
	$Control/RichTextLabel2.text = ""
	dot = false
	can_type = false
	can_click = true
	pass # Replace with function body.

func _on_1_pressed():
	if can_click == true:
		TextLabel.text = TextLabel.text + "1"
		$Control/RichTextLabel2.text = ""
		can_type = true
		pass # Replace with function body.


func _on_2_pressed():
	if can_click == true:
		TextLabel.text = TextLabel.text + "2"
		$Control/RichTextLabel2.text = ""
		can_type = true
		pass # Replace with function body.


func _on_3_pressed():
	if can_click == true:
		TextLabel.text = TextLabel.text + "3"
		$Control/RichTextLabel2.text = ""
		can_type = true
		pass # Replace with function body.

func _on_4_pressed():
	if can_click == true:
		TextLabel.text = TextLabel.text + "4"
		$Control/RichTextLabel2.text = ""
		can_type = true
		pass # Replace with function body.

func _on_5_pressed():
	if can_click == true:
		TextLabel.text = TextLabel.text + "5"
		$Control/RichTextLabel2.text = ""
		can_type = true
		pass # Replace with function body.

func _on_6_pressed():
	if can_click == true:
		TextLabel.text = TextLabel.text + "6"
		$Control/RichTextLabel2.text = ""
		can_type = true
		pass # Replace with function body.

func _on_7_pressed():
	if can_click == true:
		TextLabel.text = TextLabel.text + "7"
		$Control/RichTextLabel2.text = ""
		can_type = true
		pass # Replace with function body.


func _on_8_pressed():
	if can_click == true:
		TextLabel.text = TextLabel.text + "8"
		$Control/RichTextLabel2.text = ""
		can_type = true
		pass # Replace with function body.


func _on_9_pressed():
	if can_click == true:
		TextLabel.text = TextLabel.text + "9"
		$Control/RichTextLabel2.text = ""
		can_type = true
		pass # Replace with function body.

func _on_0_pressed():
	if can_click == true:
		TextLabel.text = TextLabel.text + "0"
		$Control/RichTextLabel2.text = ""
		can_type = true
		pass # Replace with function body.

func _on_plus_pressed():
	if can_type == true:
		if can_click == true:
			TextLabel.text = TextLabel.text + "+"
			dot = false
			can_type = false
			pass

func _on_minus_pressed():
	if can_type == true:
		if can_click == true:
			TextLabel.text = TextLabel.text + "-"
			dot = false
			can_type = false
			pass

func _on_multiply_pressed():
	if can_type == true:
		if can_click == true:
			TextLabel.text = TextLabel.text + "*"
			dot = false
			can_type = false
			pass

func _on_divide_pressed():
	if can_type == true:
		if can_click == true:
			TextLabel.text = TextLabel.text + "/"
			dot = false
			can_type = false
			pass

func _on_dot_pressed():
	if dot == false:
		if can_click == true:
			$Control/RichTextLabel.text = $Control/RichTextLabel.text + "."
			dot = true
			pass # Replace with function body.

func _on_result_pressed():
	if can_type == true:
		if can_click == true:
			expression.parse($Control/RichTextLabel.text)
			result = expression.execute()
			$Control/RichTextLabel.text = str(result)
			if "." in str(result):
				dot = true
			else:
				dot = false
			pass
