extends Control
tool

export(float) var currentHealth = 50
export(float) var maxHealth = 100

func _ready():
	pass

func set_label():
	$Output.bbcode_text = "[right]"
	$Output.bbcode_text += "Max Health: " + str(maxHealth)
	$Output.bbcode_text += "\nCurrent Health: " + str(currentHealth)
	$Output.bbcode_text += "\nTarget Angle: " + str(get_node("Dial").target_angle)
	$Output.bbcode_text += "\nCurrent Angle: " + str(get_node("Dial").angle)
	$Output.bbcode_text += "\n[/right]"

func _on_ButtonTo0_pressed():
	currentHealth = 0

func _on_ButtonTo25_pressed():
	currentHealth = 25

func _on_ButtonTo50_pressed():
	currentHealth = 50

func _on_ButtonTo75_pressed():
	currentHealth = 75

func _on_ButtonTo100_pressed():
	currentHealth = 100

func _on_VSlider_value_changed(value):
	currentHealth = value
