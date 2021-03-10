extends Control

var first_number = null
var second_number = null
var result = 0
var operation = ""
onready var TextLabel = $Control/RichTextLabel

func _on_Delete_pressed():
	first_number = null
	second_number = null
	TextLabel.text = ""
	$Control/RichTextLabel2.text = ""
	pass # Replace with function body.

func _on_1_pressed():
	TextLabel.text = TextLabel.text + "1"
	$Control/RichTextLabel2.text = ""
	pass # Replace with function body.


func _on_2_pressed():
	TextLabel.text = TextLabel.text + "2"
	$Control/RichTextLabel2.text = ""
	pass # Replace with function body.


func _on_3_pressed():
	TextLabel.text = TextLabel.text + "3"
	$Control/RichTextLabel2.text = ""
	pass # Replace with function body.

func _on_4_pressed():
	TextLabel.text = TextLabel.text + "4"
	$Control/RichTextLabel2.text = ""
	pass # Replace with function body.

func _on_5_pressed():
	TextLabel.text = TextLabel.text + "5"
	$Control/RichTextLabel2.text = ""
	pass # Replace with function body.

func _on_6_pressed():
	TextLabel.text = TextLabel.text + "6"
	$Control/RichTextLabel2.text = ""
	pass # Replace with function body.

func _on_7_pressed():
	TextLabel.text = TextLabel.text + "7"
	$Control/RichTextLabel2.text = ""
	pass # Replace with function body.


func _on_8_pressed():
	TextLabel.text = TextLabel.text + "8"
	$Control/RichTextLabel2.text = ""
	pass # Replace with function body.


func _on_9_pressed():
	TextLabel.text = TextLabel.text + "9"
	$Control/RichTextLabel2.text = ""
	pass # Replace with function body.

func _on_0_pressed():
	TextLabel.text = TextLabel.text + "0"
	$Control/RichTextLabel2.text = ""
	pass # Replace with function body.

func _on_multiply_pressed():
	operation = "multiply"
	if first_number == null:
		second_number = float(TextLabel.text)
		TextLabel.text = ""
	else:
		second_number = float(TextLabel.text)
		realizar_operation(operation)
	$Control/RichTextLabel2.text = ""
	pass # Replace with function body

func _on_minus_pressed():
	operation = "subtract"
	if first_number == null:
		first_number = float(TextLabel.text)
		TextLabel.text = ""
	else:
		second_number = float(TextLabel.text)
		realizar_operation(operation)
	$Control/RichTextLabel2.text = ""
	pass # Replace with function body.

func _on_divide_pressed():
	operation = "divide"
	if first_number == null:
		first_number = float(TextLabel.text)
		TextLabel.text = ""
	else:
		second_number = float(TextLabel.text)
		if second_number != 0:
			result = first_number / second_number
			TextLabel.text = str(result)
	$Control/RichTextLabel2.text = ""
	pass # Replace with function body.

func _on_plus_pressed():
	operation = "plus"
	if first_number == null:
		first_number = float(TextLabel.text)
		TextLabel.text = ""
	else:
		second_number = float(TextLabel.text)
		realizar_operation(operation)
	$Control/RichTextLabel2.text = ""
	pass # Replace with function body.

func _on_dot_pressed():
	var dot = false
	for i in TextLabel.text:
		if i == ".":
			dot = true
	if !dot:
		$Control/RichTextLabel.text = $Control/RichTextLabel.text + "."
	$Control/RichTextLabel2.text = ""
	pass # Replace with function body.

func _on_result_pressed():
	realizar_operation(operation)

func realizar_operation(op):
	if second_number == null:
		second_number = float(TextLabel.text)
	if first_number != null:
		match op:
			"divide":
				if second_number != 0:
					result = first_number / second_number
					TextLabel.text = str(result)
				else:
					$Control/RichTextLabel2.text = "Can't Devide on Zero"
					first_number = null
					second_number = null
			"multiply":
				result = first_number * second_number
				TextLabel.text = str(result)
			"subtract":
				result = first_number - second_number
				TextLabel.text = str(result)
			"plus":
				result = first_number + second_number
				TextLabel.text = str(result)
	first_number = null
	second_number = null
